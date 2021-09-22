import 'dart:io';

import 'package:academy_app/data/pdf_api/pdf_api.dart';
import 'package:academy_app/data/repository/failures/firestore_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pdf_watcher_state.dart';
part 'pdf_watcher_cubit.freezed.dart';

@injectable
class PdfWatcherCubit extends Cubit<PdfWatcherState> {
  final PDFapi pdFapi;
  PdfWatcherCubit(this.pdFapi) : super(PdfWatcherState.initial());
 
  String url = 'pdf/Esta_Camp_2021.pdf';
  
  Future<void> getPdf() async {
    try {
      emit(PdfWatcherState.loadInProgress());
      await pdFapi.getPdf(url).then(
            (file) => emit(
              PdfWatcherState.loadSuccess(file: file),
            ),
          );
    } catch (e) {
      print(e);
    }
  }
}
