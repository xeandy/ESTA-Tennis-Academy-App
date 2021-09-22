import 'dart:async';

import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/data/repository/news/i_news_repository.dart';
import 'package:academy_app/model/news/news.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_watcher_state.dart';
part 'news_watcher_cubit.freezed.dart';

@injectable
class NewsWatcherCubit extends Cubit<NewsWatcherState> {
  final INewsRepo iNewsRepo;
  NewsWatcherCubit(this.iNewsRepo) : super(NewsWatcherState.initial());

  StreamSubscription? streamSubscription;
  Future<void> getNews() async {
    emit(NewsWatcherState.loadInProgress());
    streamSubscription = iNewsRepo.getNews().listen(
      (falureOrSuccess) {
        emit(
          falureOrSuccess.fold(
            (failure) => NewsWatcherState.loadFailure(failure),
            (news) => NewsWatcherState.loadSuccess(news),
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
