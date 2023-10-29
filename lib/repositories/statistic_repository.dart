import 'package:get/get.dart';
import 'package:wss_repository/clients/wss_api_client.dart';
import 'package:wss_repository/requests/get_task_count_param.dart';

import '../base/mappers/api_mappers/base/base_success_response_mapper.dart';
import '../clients/base/dio_client.dart';
import '../entities/task_count.dart';

abstract class IStatisticRepository {
  /// Lấy Thống kê số lượng task theo tình trạng task
  Future<List<TaskCount>> getStatisticTaskCount({
    required GetStatisticTaskCountParam param,
  });
}

class StatisticRepository implements IStatisticRepository {
  final _dioClient = Get.find<DioClient>();
  final _client = Get.find<WssApiClient>();
  @override
  Future<List<TaskCount>> getStatisticTaskCount({
    required GetStatisticTaskCountParam param,
  }) async {
    final response = await _dioClient.request<List<TaskCount>, TaskCount>(
      () => _client.getStatisticTaskCount(param),
      decoder: (json) => TaskCount.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.jsonArray,
    );
    return response;
  }
}
