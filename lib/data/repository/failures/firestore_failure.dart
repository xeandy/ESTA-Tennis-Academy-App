import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_failure.freezed.dart';

@freezed
abstract class FirestoreFailure with _$FirestoreFailure {
  const factory FirestoreFailure.unexpected() = _Unexpected;
  const factory FirestoreFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory FirestoreFailure.none() = _FailureNone;
}