import 'dart:io';

import 'package:academy_app/data/repository/news/i_news_repository.dart';
import 'package:academy_app/model/news/news.dart';
import 'package:academy_app/model/user_data/user_data.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'add_news_state.dart';
part 'add_news_cubit.freezed.dart';

@injectable
class AddNewsCubit extends Cubit<AddNewsState> {
  AddNewsCubit(this.iNewsRepo) : super(AddNewsState.initial());
  final INewsRepo iNewsRepo;
  final picker = ImagePicker();
  FirebaseStorage fs = FirebaseStorage.instance;

  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    emit(
      state.copyWith(
        newsImg: XFile(pickedFile.path),
      ),
    );
  }

  Future<void> uploadImage(UserData userData) async {
    final format = DateFormat('yyyy-MM-dd hh:mm');
    final time = format.format(DateTime.now());
    Reference reference = fs.ref().child(
        'newsImg/${userData.userName!.getOrCrash()}_${time.toString()}.jpg');
    UploadTask uploadTask = reference.putFile(
        File(state.newsImg.path), SettableMetadata(contentType: 'image/jpg'));
    uploadTask.snapshotEvents.listen(
      (taskSnapshot) {
        if (taskSnapshot.state == TaskState.running) {
        } else if (taskSnapshot.state == TaskState.success) {}
      },
    );

    var newsImgUrl = await (await uploadTask).ref.getDownloadURL();

    emit(
      state.copyWith(
        news: state.news.copyWith(imgUrl: newsImgUrl),
      ),
    );
  }

  void onChanged(String value) {
    return emit(
      state.copyWith(
        news: state.news.copyWith(content: value),
      ),
    );
  }

  Future<void> addNews(UserData userData) async {
    emit(state.copyWith(
      isAdding: true,
    ));
    uploadImage(userData).whenComplete(
      () {
        iNewsRepo
            .addNews(
              state.news.copyWith(
                coachImgUrl: userData.imgUrl,
                coachName: userData.userName!.getOrCrash(),
              ),
            )
            .whenComplete(
              () => emit(
                state.copyWith(
                  isAdded: true,
                ),
              ),
            );
      },
    );
  }
}
