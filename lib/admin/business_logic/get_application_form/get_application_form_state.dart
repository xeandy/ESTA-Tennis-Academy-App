part of 'get_application_form_cubit.dart';

@freezed
abstract class GetApplicationFormState with _$GetApplicationFormState {
  const factory GetApplicationFormState.initial() = _Initial;
  const factory GetApplicationFormState.loadInProgress() = _LoadInProgress;
  const factory GetApplicationFormState.loadSuccess(
      ApplicationForm applicationForm) = _LoadSuccess;
  const factory GetApplicationFormState.loadFailure(
      FirestoreFailure applicationFormFailure) = _LoadFailure;
}
