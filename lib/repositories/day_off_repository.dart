import 'package:get/get.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/entities/day_off.dart';
import 'package:wss_repository/requests/get_day_off_param.dart';
import 'package:wss_repository/requests/post_day_off_body.dart';
import 'package:wss_repository/requests/put_day_off_body.dart';

import '../base/mappers/api_mappers/base/base_success_response_mapper.dart';
import '../clients/base/dio_client.dart';
import '../clients/wss_api_client.dart';

abstract class IDayOffRepository {
  /// Lấy danh sách day off
  Future<DataPagingListResponse<DayOff>> getDayOffs({
    required GetDayOffParam param,
  });

  /// Tạo day off
  Future<DayOff> post({required PostDayOffBody body});

  /// Cập nhật day off
  Future<DayOff> put({required String id, required PutDayOffBody body});

  /// Xóa day off
  Future<DayOff> delete({required String id});
}

class DayOffRepository implements IDayOffRepository {
  final _dioClient = Get.find<DioClient>();
  final _client = Get.find<WssApiClient>();

  @override
  Future<DayOff> delete({required String id}) async {
    final response = await _dioClient.request<DayOff, DayOff>(
      () => _client.deleteDayOff(id),
      decoder: (json) => DayOff.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }

  @override
  Future<DataPagingListResponse<DayOff>> getDayOffs({
    required GetDayOffParam param,
  }) async {
    final response =
        await _dioClient.request<DataPagingListResponse<DayOff>, DayOff>(
      () => _client.getDayOffs(param),
      decoder: (json) => DayOff.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.dataPagingArray,
    );
    return response;
  }

  @override
  Future<DayOff> post({required PostDayOffBody body}) async {
    final response = await _dioClient.request<DayOff, DayOff>(
      () => _client.postDayOff(body),
      decoder: (json) => DayOff.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }

  @override
  Future<DayOff> put({required String id, required PutDayOffBody body}) async {
    final response = await _dioClient.request<DayOff, DayOff>(
      () => _client.putDayOff(id, body),
      decoder: (json) => DayOff.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }
}
