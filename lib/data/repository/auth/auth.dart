import 'package:academy_app/data/repository/auth/i_auth.dart';
import 'package:academy_app/model/domain/auth/app_user.dart';
import 'package:dartz/dartz.dart';
import 'package:academy_app/model/domain/auth/value_objects.dart';
import 'package:academy_app/model/domain/auth/auth_failures.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuth)
class Auth implements IAuth {
  final FirebaseAuth firebaseAuth;

  Auth(this.firebaseAuth);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(AuthFailure.emailAlredyInUse());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signout() async {
    firebaseAuth.signOut();
  }

  @override
  Future<Option<AppUser>> getUser() async =>
      optionOf(firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<AuthFailure, Unit>> resetPassword(
      {required Email email}) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(
        email: email.getOrCrash(),
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(AuthFailure.resetPswdUserNotFound());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }
}
