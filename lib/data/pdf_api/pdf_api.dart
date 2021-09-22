import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

@LazySingleton()
class PDFapi {
  Future<File> getPdf(String url) async {
    final pdfRef = FirebaseStorage.instance.ref().child(url);
    final bytes = await pdfRef.getData();
    return storeFile(url, bytes!);
  }

  Future<File> storeFile(String url, List<int> bytes) async {
    final fileName = basename(url);
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$fileName');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }
}
