import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;
import 'package:wss_repository/base/mappers/api_mappers/base/base_success_response_mapper.dart';
import 'package:wss_repository/clients/base/dio_client.dart';
import 'package:wss_repository/clients/wss_api_client.dart';
import 'package:wss_repository/entities/uploaded_file.dart';

abstract interface class IFileRepository {
  Future<List<UploadedFile>> uploadFiles(List<File> files);
}

class FileRepository implements IFileRepository {
  final _dioClient = getx.Get.find<DioClient>();
  final _client = getx.Get.find<WssApiClient>();

  @override
  Future<List<UploadedFile>> uploadFiles(List<File> files) async {
    final mutipartFiles = files.map((file) {
      return MultipartFile.fromFileSync(file.path);
    }).toList();

    final response = await _dioClient.request<List<UploadedFile>, UploadedFile>(
      () => _client.uploadFiles(mutipartFiles),
      decoder: (json) => UploadedFile.fromJson(json),
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
    );
    return response;
  }
}
