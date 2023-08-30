import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/dio_helper/actions/download.dart';
import 'package:flutter_tdd/core/http/models/download_request_model.dart';
import 'package:path_provider/path_provider.dart';

class FileHelper {

  Future<String> getDownloadPath() async {
    Directory? directory;
    try {
      if (Platform.isIOS) {
        directory = await getApplicationDocumentsDirectory();
      } else {
        directory = Directory('/storage/emulated/0/Download');
        // Put file in global download folder, if for an unknown reason it didn't exist, we fallback
        // ignore: avoid_slow_async_io
        if (!await directory.exists()) directory = await getExternalStorageDirectory();
      }
    } catch (err, stack) {
      print("Cannot get download folder path");
      return "";
    }
    return directory?.path ?? "";
  }

  Future<File?> downloadFile({required String url,}) async {

    String localFilePath = "${getDownloadPath()}/${url.split("/").last}";

    var params = DownloadRequestModel(
      url: url,
      localPath: localFilePath,
    );

    final response = await getIt.get<Download>().download(params);
    if (response.isRight()) {
      File file = File(localFilePath);
      //TODO add your code here
      return file;
    }
    return null;
  }

}