// ignore_for_file: unused_field

import 'package:get/get.dart';

import '../clients/sample_client.dart';

class SampleRequest {
  final String name;
  final String description;
  final String? image;

  SampleRequest({
    required this.name,
    required this.description,
    this.image,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'image': image,
      };
}

abstract class SampleService {
  Future<bool> getSamples();
  Future<bool> getSample({required int id});
  Future<bool> createSample({required SampleRequest body});
  Future<bool> updateSample({required int id});
  Future<bool> deleteSample({required int id});
}

class SampleRepository implements SampleService {
  final SampleApiClient _client;

  SampleRepository({SampleApiClient? client})
      : _client = client ??= Get.find<SampleApiClient>();

  @override
  Future<bool> getSamples() {
    throw UnimplementedError();
  }

  @override
  Future<bool> createSample({required SampleRequest body}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteSample({required int id}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> getSample({required int id}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> updateSample({required int id}) {
    throw UnimplementedError();
  }
}
