import 'package:get/get.dart';
import 'package:wss_repository/base/mappers/api_mappers/base/base_success_response_mapper.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/clients/base/dio_client.dart';
import 'package:wss_repository/clients/wss_api_client.dart';
import 'package:wss_repository/entities/partner_payment_history.dart';
import 'package:wss_repository/requests/get_partner_payment_history.dart';

abstract class IPartnerPaymentHistoryRepository {
  Future<DataPagingListResponse<PartnerPaymentHistory>>
      getPartnerPaymentHistories({
    required GetPartnerPaymentHistoryParam param,
  });
}

class PartnerPaymentHistoryRepository
    implements IPartnerPaymentHistoryRepository {
  final _dioClient = Get.find<DioClient>();
  final _client = Get.find<WssApiClient>();

  @override
  Future<DataPagingListResponse<PartnerPaymentHistory>>
      getPartnerPaymentHistories({
    required GetPartnerPaymentHistoryParam param,
  }) {
    return _dioClient.request<DataPagingListResponse<PartnerPaymentHistory>,
        PartnerPaymentHistory>(
      () => _client.getPartnerPaymentHistories(param),
      decoder: (json) => PartnerPaymentHistory.fromJson(json),
      successResponseMapperType: SuccessResponseMapperType.dataPagingArray,
    );
  }
}
