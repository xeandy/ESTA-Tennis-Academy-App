import 'package:academy_app/data/repository/auth/i_auth.dart';
import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/data/repository/user/application_form/application_form_dto.dart';
import 'package:academy_app/data/repository/user/i_user_repository.dart';
import 'package:academy_app/data/repository/user/user_dto.dart';
import 'package:academy_app/model/application_form/application_form.dart';
import 'package:academy_app/model/domain/core/errors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:academy_app/model/user_data/user_data.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../injection.dart';

@LazySingleton(as: IUserRepo)
class UserRepo implements IUserRepo {
  final FirebaseFirestore firebaseFirestore;
  CollectionReference userDataCollectionreference =
      FirebaseFirestore.instance.collection('users');
  UserRepo(this.firebaseFirestore);
  @override
  Future<Either<FirestoreFailure, Unit>> createUserData(
      {UserData? userData}) async {
    try {
      final userOption = await getIt<IAuth>().getUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());
      final userDto = UserDataDTO.fromDomain(userData!.copyWith(id: user.id));
      await userDataCollectionreference
          .doc(user.id.getOrCrash())
          .set(userDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> createApplicationForm(
      {required ApplicationForm applicationForm}) async {
    try {
      final userOption = await getIt<IAuth>().getUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());
      final applicationFormDto = ApplicationFormDTO.fromDomain(applicationForm);
      await userDataCollectionreference
          .doc(user.id.getOrCrash())
          .collection('applicationForm')
          .doc('appform')
          .set(applicationFormDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<FirestoreFailure, UserData>> getUserData() async* {
    final userOption = await getIt<IAuth>().getUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    yield* userDataCollectionreference
        .doc(user.id.getOrCrash())
        .snapshots()
        .map(
          (snapshot) => right<FirestoreFailure, UserData>(
            UserDataDTO.fromJson(snapshot.data() as Map<String, dynamic>)
                .toDomain(),
          ),
        )
        .handleError(
      (e) {
        if (e! is FirebaseException &&
            e.message.contains('permission-denied')) {
          return left(FirestoreFailure.insufficientPermission());
        } else {
          return left(FirestoreFailure.unexpected());
        }
      },
    );
  }

  @override
  Stream<Either<FirestoreFailure, ApplicationForm>> getApplicationForm(
      String userId) async* {
    yield* userDataCollectionreference
        .doc(userId)
        .collection('applicationForm')
        .doc('appform')
        .snapshots()
        .map(
          (snapshot) => right<FirestoreFailure, ApplicationForm>(
            ApplicationFormDTO.fromJson(snapshot.data() as Map<String, dynamic>)
                .toDomain(),
          ),
        )
        .handleError(
      (e) {
        if (e! is FirebaseException &&
            e.message.contains('permission-denied')) {
          return left(FirestoreFailure.insufficientPermission());
        } else {
          return left(FirestoreFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<FirestoreFailure, Unit>> updateUserData({
    required UserData userData,
  }) async {
    final userOption = await getIt<IAuth>().getUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final userDto = UserDataDTO.fromDomain(userData);

    try {
      await userDataCollectionreference
          .doc(user.id.getOrCrash())
          .update(userDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> updateAplicationForm(
      {required ApplicationForm applicationForm}) async {
    final userOption = await getIt<IAuth>().getUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final applicationFormDto = ApplicationFormDTO.fromDomain(applicationForm);
    try {
      await userDataCollectionreference
          .doc(user.id.getOrCrash())
          .collection('applicationForm')
          .doc('appform')
          .update(applicationFormDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> updateProfileAsp(
      {required UserData userData}) async {
    try {
      final userOption = await getIt<IAuth>().getUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());
      final userDto = UserDataDTO.fromDomain(userData);

      await userDataCollectionreference.doc(user.id.getOrCrash()).update({
        'asp': FieldValue.arrayUnion(
          userDto.asp
              .map(
                (profileAspDto) => profileAspDto.toJson(),
              )
              .toList(),
        )
      });
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> updateProfileCamp(
      {required UserData userData}) async {
    try {
      final userOption = await getIt<IAuth>().getUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());
      final userDto = UserDataDTO.fromDomain(userData);

      await userDataCollectionreference.doc(user.id.getOrCrash()).update({
        'camp': FieldValue.arrayUnion(
          userDto.camp
              .map(
                (profileCampDto) => profileCampDto.toJson(),
              )
              .toList(),
        )
      });
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> updateProfileAdtService(
      {required UserData userData}) async {
    try {
      final userOption = await getIt<IAuth>().getUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());
      final userDto = UserDataDTO.fromDomain(userData);

      await userDataCollectionreference.doc(user.id.getOrCrash()).update({
        'adtservice': FieldValue.arrayUnion(
          userDto.adtservice
              .map(
                (profileAdtServiceDto) => profileAdtServiceDto.toJson(),
              )
              .toList(),
        )
      });
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<FirestoreFailure, List<UserData>>> getUsers(
      String query) async* {
    yield* userDataCollectionreference
        .snapshots()
        .map(
          (snap) => right<FirestoreFailure, List<UserData>>(
            snap.docs
                .map(
                  (doc) =>
                      UserDataDTO.fromJson(doc.data() as Map<String, dynamic>)
                          .toDomain(),
                )
                .toList(),
          ),
        )
        .handleError(
      (e) {
        if (e! is FirebaseException &&
            e.message.contains('permission-denied')) {
          return left(FirestoreFailure.insufficientPermission());
        } else {
          return left(FirestoreFailure.unexpected());
        }
      },
    );
  }
}
