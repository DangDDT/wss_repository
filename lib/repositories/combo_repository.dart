import 'package:get/get.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/requests/get_combo_param.dart';

import '../base/mappers/api_mappers/base/base_success_response_mapper.dart';
import '../clients/base/dio_client.dart';
import '../clients/wss_api_client.dart';
import '../entities/combo.dart';

abstract class IComboRepository {
  /// Lấy danh sách combo
  Future<DataPagingListResponse<Combo>> getCombos({
    required GetComboParam param,
  });

  /// Lấy combo theo id
  Future<Combo> getCombo({required String id});
}

class ComboRepository implements IComboRepository {
  final _dioClient = Get.find<DioClient>();
  final _client = Get.find<WssApiClient>();

  @override
  Future<DataPagingListResponse<Combo>> getCombos({
    required GetComboParam param,
  }) async {
    final response =
        await _dioClient.request<DataPagingListResponse<Combo>, Combo>(
      () => _client.getCombos(param),
      decoder: (json) => Combo.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.dataPagingArray,
    );
    return response;
  }

  @override
  Future<Combo> getCombo({required String id}) {
    final response = _dioClient.request<Combo, Combo>(
      () => _client.getCombo(id),
      decoder: (json) => Combo.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }
}
