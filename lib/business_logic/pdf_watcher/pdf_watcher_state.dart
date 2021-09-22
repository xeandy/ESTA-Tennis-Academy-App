part of 'pdf_watcher_cubit.dart';

@freezed
abstract class PdfWatcherState with _$PdfWatcherState {
  const factory PdfWatcherState.initial() = _Initial;

  const factory PdfWatcherState.loadInProgress() = _LoadInProgress;
  const factory PdfWatcherState.loadSuccess({
    required File file,
  }) = _LoadSuccess;
  const factory PdfWatcherState.loadFailure(FirestoreFailure failure) =
      _LoadFailure;
}
