import 'package:get/get.dart';
import 'package:wss_repository/base/mappers/api_mappers/base/base_success_response_mapper.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/entities/task.dart';
import 'package:wss_repository/wss_repository.dart';

import '../clients/base/dio_client.dart';
import '../clients/wss_api_client.dart';

abstract class ITaskRepository {
  Future<DataPagingListResponse<Task>> getTasks({
    required GetTaskParam param,
  });

  Future<Task> getTask({
    required String id,
  });

  Future<bool> putTask({
    required String id,
    required PutTaskBody body,
  });
}

class TaskRepository implements ITaskRepository {
  final _dioClient = Get.find<DioClient>();
  final _client = Get.find<WssApiClient>();
  @override
  Future<DataPagingListResponse<Task>> getTasks({
    required GetTaskParam param,
  }) async {
    final response =
        await _dioClient.request<DataPagingListResponse<Task>, Task>(
      () => _client.getTasks(param),
      decoder: (json) => Task.fromJson(json),
      successResponseMapperType: SuccessResponseMapperType.dataPagingArray,
    );
    return response;
  }

  @override
  Future<Task> getTask({
    required String id,
  }) async {
    final response = await _dioClient.request<Task, Task>(
      () => _client.getTask(id),
      decoder: (json) => Task.fromJson(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }

  @override
  Future<bool> putTask({
    required String id,
    required PutTaskBody body,
  }) async {
    await _dioClient.request(
      () => _client.putTask(id, body),
      decoder: (json) => json,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return true;
  }
}
