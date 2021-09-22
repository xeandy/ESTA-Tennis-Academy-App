import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/model/program/additional_service.dart';
import 'package:academy_app/model/program/program.dart';
import 'package:academy_app/model/program/full_day.dart';
import 'package:dartz/dartz.dart';

abstract class IProgramRepo {
  Stream<Either<FirestoreFailure, List<Program>>> getPrograms();
  Stream<Either<FirestoreFailure, List<Program>>> getMemmberOfAspPrice();
  Stream<Either<FirestoreFailure, List<Program>>> getNoneMemberPrice();
  Stream<Either<FirestoreFailure, FullDay>> getFullDayCampPrice();
  Stream<Either<FirestoreFailure, Program>> getFitnessPrice();
  Stream<Either<FirestoreFailure, AdtService>> getPtlPrice();
  Stream<Either<FirestoreFailure, AdtService>> getPflPrice();
}
