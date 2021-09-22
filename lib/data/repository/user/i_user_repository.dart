import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/model/application_form/application_form.dart';
import 'package:academy_app/model/user_data/user_data.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRepo {
  Future<Either<FirestoreFailure, Unit>> createUserData({
    required UserData userData,
  });
  Future<Either<FirestoreFailure, Unit>> createApplicationForm({
    required ApplicationForm applicationForm,
  });

  Stream<Either<FirestoreFailure, UserData>> getUserData();

  Stream<Either<FirestoreFailure, ApplicationForm>> getApplicationForm(
      String userId);

  Stream<Either<FirestoreFailure, List<UserData>>> getUsers(String query);

  Future<Either<FirestoreFailure, Unit>> updateUserData({
    required UserData userData,
  });

  Future<Either<FirestoreFailure, Unit>> updateAplicationForm({
    required ApplicationForm applicationForm,
  });

  Future<Either<FirestoreFailure, Unit>> updateProfileAsp(
      {required UserData userData});
  Future<Either<FirestoreFailure, Unit>> updateProfileCamp(
      {required UserData userData});

  Future<Either<FirestoreFailure, Unit>> updateProfileAdtService(
      {required UserData userData});
}
