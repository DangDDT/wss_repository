import 'package:get/get.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/entities/service.dart';
import 'package:wss_repository/requests/get_service_param.dart';
import 'package:wss_repository/requests/post_service_body.dart';
import 'package:wss_repository/requests/put_service_status_body.dart';

import '../base/mappers/api_mappers/base/base_success_response_mapper.dart';
import '../clients/base/dio_client.dart';
import '../clients/wss_api_client.dart';

abstract class IServiceRepository {
  /// Lấy danh sách service
  Future<DataPagingListResponse<Service>> getServices({
    required GetServiceParam param,
  });

  /// Lấy service theo id
  Future<Service> getService({
    required String id,
  });

  /// Tạo service
  Future<Service> postService({
    required PostServiceBody body,
  });

  /// Cập nhật service
  Future<bool> putService({
    required String id,
    required PostServiceBody body,
  });

  /// Cập nhật trạng thái service ngưng hoạt động
  Future<bool> putServiceStatus({
    required String id,
    required PutServiceStatusBody body,
  });
}

class ServiceRepository implements IServiceRepository {
  final _dioClient = Get.find<DioClient>();
  final _client = Get.find<WssApiClient>();
  @override
  Future<Service> getService({required String id}) async {
    final response = await _dioClient.request<Service, Service>(
      () => _client.getService(id),
      decoder: (json) => Service.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }

  @override
  Future<DataPagingListResponse<Service>> getServices({
    required GetServiceParam param,
  }) async {
    final response =
        await _dioClient.request<DataPagingListResponse<Service>, Service>(
      () => _client.getServices(param),
      decoder: (json) => Service.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.dataPagingArray,
    );
    return response;
  }

  @override
  Future<Service> postService({required PostServiceBody body}) async {
    final response = await _dioClient.request<Service, Service>(
      () => _client.postService(body),
      decoder: (json) => Service.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }

  @override
  Future<bool> putService({
    required String id,
    required PostServiceBody body,
  }) async {
    await _dioClient.request<dynamic, dynamic>(
      () => _client.putService(id, body),
      decoder: (json) => json,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return true;
  }

  @override
  Future<bool> putServiceStatus({
    required String id,
    required PutServiceStatusBody body,
  }) async {
    await _dioClient.request<dynamic, dynamic>(
      () => _client.putServiceStatus(id, body),
      decoder: (json) => json,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return true;
  }
}
