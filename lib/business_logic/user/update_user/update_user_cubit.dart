import 'dart:io';

import 'package:academy_app/data/repository/user/i_user_repository.dart';
import 'package:academy_app/model/application_form/application_form.dart';
import 'package:academy_app/model/domain/auth/value_objects.dart';
import 'package:academy_app/model/user_data/user_data.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'update_user_state.dart';
part 'update_user_cubit.freezed.dart';

@injectable
class UpdateUserCubit extends Cubit<UpdateUserState> {
  final IUserRepo iUserRepo;
  final picker = ImagePicker();

  FirebaseStorage fs = FirebaseStorage.instance;

  UpdateUserCubit(this.iUserRepo) : super(UpdateUserState.initial());

  void userNameChanged(String userName) {
    emit(
      state.copyWith(
        userName: UserName(userName),
        isChanged: true,
      ),
    );
  }

  void parent1PhoneNumberChanged(String value) {
    emit(
      state.copyWith(
        parentOnePhoneNumber: ParentOnePhoneNumber(value),
        isChanged: true,
      ),
    );
  }

  void parent2PhoneNumberChanged(String value) {
    emit(
      state.copyWith(
        parentTwoPhoneNumber: ParentTwoPhoneNumber(value),
        isChanged: true,
      ),
    );
  }

  void homeAddressChanged(String value) {
    emit(
      state.copyWith(
        homeAddress: HomeAddress(value),
        isChanged: true,
      ),
    );
  }

  void preferredEmailChanged(String value) {
    emit(
      state.copyWith(
        preferredEmail: PreferredEmail(value),
        isChanged: true,
      ),
    );
  }

  void emergencyNameChanged(String value) {
    emit(
      state.copyWith(
        emergencyName: EmergencyName(value),
        isChanged: true,
      ),
    );
  }

  void emergencyPhoneNumberChanged(String value) {
    emit(
      state.copyWith(
        emergencyPhoneNumber: EmergencyPhoneNumber(value),
        isChanged: true,
      ),
    );
  }

  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    emit(
      state.copyWith(
        img: XFile(pickedFile.path),
        isChanged: true,
      ),
    );
  }

  Future<void> uploadImage(UserData userData) async {
    final format = DateFormat('yyyy-MM-dd hh:mm');
    final time = format.format(DateTime.now());
    Reference reference = fs.ref().child(
        'userImg/${userData.userName!.getOrCrash()}_${time.toString()}.jpg');
    UploadTask uploadTask = reference.putFile(
        File(state.img.path), SettableMetadata(contentType: 'image/jpg'));
    uploadTask.snapshotEvents.listen(
      (taskSnapshot) {
        if (taskSnapshot.state == TaskState.running) {
          emit(state.copyWith());
        } else if (taskSnapshot.state == TaskState.success) {
          emit(state.copyWith());
        }
      },
    );

    var imageUrl = await (await uploadTask).ref.getDownloadURL();

    emit(
      state.copyWith(
        imgUrl: imageUrl,
      ),
    );
  }

  Future<void> updateUser(
      UserData userData, ApplicationForm applicationForm) async {
    if (state.isChanged == true) {
      if (state.img.path.isNotEmpty) {
        emit(state.copyWith(isUpload: true));
        if (userData.imgUrl!.isNotEmpty) {
          fs.refFromURL(userData.imgUrl!).delete();
          await uploadImage(userData).whenComplete(
            () async {
              emit(state.copyWith(isComplete: true, isUpload: false));

              await iUserRepo.updateUserData(
                userData: userData.copyWith(
                  imgUrl: state.imgUrl ?? userData.imgUrl,
                  userName: state.userName.value
                      .fold((l) => userData.userName, (r) => state.userName),
                ),
              );
            },
          );
        } else {
          await uploadImage(userData).whenComplete(
            () async {
              emit(state.copyWith(isComplete: true, isUpload: false));

              await iUserRepo.updateUserData(
                userData: userData.copyWith(
                  imgUrl: state.imgUrl,
                  userName: state.userName.value
                      .fold((l) => userData.userName, (r) => state.userName),
                ),
              );
              await iUserRepo.updateAplicationForm(
                applicationForm: applicationForm.copyWith(
                  parentOnePhoneNumber: state.parentOnePhoneNumber.value.fold(
                    (l) => applicationForm.parentOnePhoneNumber,
                    (r) => state.parentOnePhoneNumber,
                  ),
                  parentTwoPhoneNumber: state.parentTwoPhoneNumber.value.fold(
                    (l) => applicationForm.parentTwoPhoneNumber,
                    (r) => state.parentTwoPhoneNumber,
                  ),
                  homeAddress: state.homeAddress.value.fold(
                    (l) => applicationForm.homeAddress,
                    (r) => state.homeAddress,
                  ),
                  preferredEmail: state.preferredEmail.value.fold(
                    (l) => applicationForm.preferredEmail,
                    (r) => state.preferredEmail,
                  ),
                  emergencyName: state.emergencyName.value.fold(
                    (l) => applicationForm.emergencyName,
                    (r) => state.emergencyName,
                  ),
                  emergencyPhoneNumber: state.emergencyPhoneNumber.value.fold(
                    (l) => applicationForm.emergencyPhoneNumber,
                    (r) => state.emergencyPhoneNumber,
                  ),
                ),
              );
            },
          );
        }
      } else {
        await iUserRepo.updateUserData(
          userData: userData.copyWith(
            userName: state.userName.value
                .fold((l) => userData.userName, (r) => state.userName),
          ),
        );
        await iUserRepo.updateAplicationForm(
          applicationForm: applicationForm.copyWith(
            parentOnePhoneNumber: state.parentOnePhoneNumber.value.fold(
              (l) => applicationForm.parentOnePhoneNumber,
              (r) => state.parentOnePhoneNumber,
            ),
            parentTwoPhoneNumber: state.parentTwoPhoneNumber.value.fold(
              (l) => applicationForm.parentTwoPhoneNumber,
              (r) => state.parentTwoPhoneNumber,
            ),
            homeAddress: state.homeAddress.value.fold(
              (l) => applicationForm.homeAddress,
              (r) => state.homeAddress,
            ),
            preferredEmail: state.preferredEmail.value.fold(
              (l) => applicationForm.preferredEmail,
              (r) => state.preferredEmail,
            ),
            emergencyName: state.emergencyName.value.fold(
              (l) => applicationForm.emergencyName,
              (r) => state.emergencyName,
            ),
            emergencyPhoneNumber: state.emergencyPhoneNumber.value.fold(
              (l) => applicationForm.emergencyPhoneNumber,
              (r) => state.emergencyPhoneNumber,
            ),
          ),
        );
        emit(state.copyWith(isComplete: true));
      }
    } else {
      return;
    }
    emit(
      state.copyWith(
        showErrorMessage: AutovalidateMode.always,
      ),
    );
  }
}
