import 'package:academy_app/model/domain/auth/app_user.dart';
import 'package:academy_app/model/domain/auth/auth_failures.dart';
import 'package:academy_app/model/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';

abstract class IAuth {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  });
  Future<Option<AppUser>> getUser();

  Future<Either<AuthFailure, Unit>> resetPassword({required Email email});

  Future<void> signout();
}
