import 'package:get/get.dart';
import 'package:wss_repository/base/mappers/api_mappers/base/base_success_response_mapper.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/clients/base/dio_client.dart';
import 'package:wss_repository/clients/wss_api_client.dart';
import 'package:wss_repository/entities/voucher.dart';
import 'package:wss_repository/requests/get_voucher_param.dart';

abstract interface class IVoucherRepository {
  Future<DataPagingListResponse<Voucher>> getVouchers({
    required GetVoucherParam param,
  });

  Future<Voucher> getVoucherByCode({required String code});
}

class VoucherRepository implements IVoucherRepository {
  final _dioClient = Get.find<DioClient>();
  final _client = Get.find<WssApiClient>();

  @override
  Future<Voucher> getVoucherByCode({required String code}) async {
    final response = await _dioClient.request<Voucher, Voucher>(
      () => _client.getVoucherByCode(code),
      decoder: (json) => Voucher.fromJson(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }

  @override
  Future<DataPagingListResponse<Voucher>> getVouchers({
    required GetVoucherParam param,
  }) async {
    final response =
        await _dioClient.request<DataPagingListResponse<Voucher>, Voucher>(
      () => _client.getVouchers(param),
      decoder: (json) => Voucher.fromJson(json),
      successResponseMapperType: SuccessResponseMapperType.dataPagingArray,
    );
    return response;
  }
}
