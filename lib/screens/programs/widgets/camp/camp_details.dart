import 'package:academy_app/business_logic/pdf_watcher/pdf_watcher_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

import 'package:flutter/material.dart';

class CampDetails extends StatelessWidget {
  const CampDetails({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: BlocBuilder<PdfWatcherCubit, PdfWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
            loadInProgress: (_) => Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (_) => Center(
              child: Text('Error'),
            ),
            orElse: () => Container(),
            loadSuccess: (state) => PDFView(
              filePath: state.file.path,
            ),
          );
        },
      ),
    );
  }
}
