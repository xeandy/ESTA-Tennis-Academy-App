import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:academy_app/data/repository/program/dto/adt_service_dto.dart';
import 'package:academy_app/data/repository/program/dto/full_day_dto.dart';
import 'package:academy_app/data/repository/program/dto/program_dto.dart';
import 'package:academy_app/data/repository/program/i_program_repository.dart';
import 'package:academy_app/model/program/additional_service.dart';
import 'package:academy_app/model/program/full_day.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:academy_app/model/program/program.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProgramRepo)
class ProgramRepo implements IProgramRepo {
  final FirebaseFirestore firebaseFirestore;
  CollectionReference programCollectionReference =
      FirebaseFirestore.instance.collection('programs');
  ProgramRepo(this.firebaseFirestore);
  @override
  Stream<Either<FirestoreFailure, List<Program>>> getPrograms() async* {
    yield* programCollectionReference
        .orderBy('groupName')
        .snapshots()
        .map(
          (snap) => right<FirestoreFailure, List<Program>>(
            snap.docs
                .map(
                  (doc) =>
                      ProgramDTO.fromJson(doc.data() as Map<String, dynamic>)
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

  @override
  Stream<Either<FirestoreFailure, List<Program>>>
      getMemmberOfAspPrice() async* {
    CollectionReference campCollectionReference =
        FirebaseFirestore.instance.collection('memberOfAsp');
    yield* campCollectionReference
        .orderBy('groupName')
        .snapshots()
        .map(
          (snap) => right<FirestoreFailure, List<Program>>(
            snap.docs
                .map(
                  (doc) =>
                      ProgramDTO.fromJson(doc.data() as Map<String, dynamic>)
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

  @override
  Stream<Either<FirestoreFailure, List<Program>>> getNoneMemberPrice() async* {
    CollectionReference campCollectionReference =
        FirebaseFirestore.instance.collection('nonMember');
    yield* campCollectionReference
        .orderBy('groupName')
        .snapshots()
        .map(
          (snap) => right<FirestoreFailure, List<Program>>(
            snap.docs
                .map(
                  (doc) =>
                      ProgramDTO.fromJson(doc.data() as Map<String, dynamic>)
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

  @override
  Stream<Either<FirestoreFailure, FullDay>> getFullDayCampPrice() async* {
    CollectionReference fullDayCollectionReference =
        FirebaseFirestore.instance.collection('fullDayCamp');
    yield* fullDayCollectionReference
        .doc('mHX3z5gb75ZBHuQE4o8Z')
        .snapshots()
        .map(
          (snap) => right<FirestoreFailure, FullDay>(
              FullDayDto.fromJson(snap.data() as Map<String, dynamic>)
                  .toDomain()),
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
  Stream<Either<FirestoreFailure, Program>> getFitnessPrice() async* {
    CollectionReference fullDayCollectionReference =
        FirebaseFirestore.instance.collection('fitnessGroup');
    yield* fullDayCollectionReference
        .doc('OtuAsGXWqalyI3qZdXYX')
        .snapshots()
        .map(
          (snap) => right<FirestoreFailure, Program>(
            ProgramDTO.fromJson(snap.data() as Map<String, dynamic>).toDomain(),
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
  Stream<Either<FirestoreFailure, AdtService>> getPflPrice() async* {
    CollectionReference fullDayCollectionReference =
        FirebaseFirestore.instance.collection('additionalService');
    yield* fullDayCollectionReference
        .doc('egeEFmuvA5Qvt4Sd9fbn')
        .snapshots()
        .map(
          (snap) => right<FirestoreFailure, AdtService>(
            AdtServiceDto.fromJson(snap.data() as Map<String, dynamic>)
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
  Stream<Either<FirestoreFailure, AdtService>> getPtlPrice() async* {
    CollectionReference fullDayCollectionReference =
        FirebaseFirestore.instance.collection('additionalService');
    yield* fullDayCollectionReference
        .doc('thV7y5903qjAC08eJqXP')
        .snapshots()
        .map(
          (snap) => right<FirestoreFailure, AdtService>(
            AdtServiceDto.fromJson(snap.data() as Map<String, dynamic>)
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
}
