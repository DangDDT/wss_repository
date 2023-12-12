import 'package:get/get.dart';
import 'package:wss_repository/base/mappers/api_mappers/base/base_success_response_mapper.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/clients/base/dio_client.dart';
import 'package:wss_repository/clients/wss_api_client.dart';
import 'package:wss_repository/entities/notification.dart';
import 'package:wss_repository/requests/get_notification_param.dart';
import 'package:wss_repository/requests/patch_read_notification.dart';

abstract class INotificationRepository {
  Future<DataPagingListResponse<Notification>> getNotifications({
    required GetNotificationParam param,
  });

  Future<bool> updateNotificationStatus({
    required String id,
    required PatchReadNotificationParam param,
  });
}

class NotificationRepository implements INotificationRepository {
  final _dioClient = Get.find<DioClient>();
  final _client = Get.find<WssApiClient>();

  @override
  Future<DataPagingListResponse<Notification>> getNotifications({
    required GetNotificationParam param,
  }) async {
    final response = await _dioClient
        .request<DataPagingListResponse<Notification>, Notification>(
      () => _client.getNotifications(param),
      decoder: (json) => Notification.fromJson(json),
      successResponseMapperType: SuccessResponseMapperType.dataPagingArray,
    );
    return response;
  }

  @override
  Future<bool> updateNotificationStatus({
    required String id,
    required PatchReadNotificationParam param,
  }) async {
    final response = await _dioClient.request<bool, bool>(
      () => _client.patchReadNotification(id, param),
      decoder: (json) => true,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }
}
