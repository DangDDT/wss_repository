import 'package:get/get.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';

import '../base/base_success_response_mapper.dart';

class DataPagingArrayJsonResponseMapper<T>
    extends BaseSuccessResponseMapper<T, DataPagingListResponse<T>> {
  @override
  // ignore: avoid-dynamic
  DataPagingListResponse<T> map(dynamic response, Decoder<T>? decoder) {
    return decoder != null && response is Map<String, dynamic>
        ? DataPagingListResponse.fromJson(response, (json) => decoder(json))
        : DataPagingListResponse<T>(data: response);
  }
}
