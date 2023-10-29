import 'package:get/get.dart';
import 'package:wss_repository/base/mappers/api_mappers/success_response_mapper/data_paging_array_response_mapper.dart';

import '../success_response_mapper/data_json_array_response_mapper.dart';
import '../success_response_mapper/data_json_object_response_mapper.dart';
import '../success_response_mapper/json_array_response_mapper.dart';
import '../success_response_mapper/json_object_response_mapper.dart';

abstract class BaseSuccessResponseMapper<I, O> {
  const BaseSuccessResponseMapper();

  factory BaseSuccessResponseMapper.fromType(SuccessResponseMapperType type) {
    switch (type) {
      case SuccessResponseMapperType.dataJsonObject:
        return DataJsonObjectResponseMapper<I>()
            as BaseSuccessResponseMapper<I, O>;
      case SuccessResponseMapperType.dataJsonArray:
        return DataJsonArrayResponseMapper<I>()
            as BaseSuccessResponseMapper<I, O>;
      case SuccessResponseMapperType.jsonObject:
        return JsonObjectResponseMapper<I>() as BaseSuccessResponseMapper<I, O>;
      case SuccessResponseMapperType.jsonArray:
        return JsonArrayResponseMapper<I>() as BaseSuccessResponseMapper<I, O>;
      case SuccessResponseMapperType.dataPagingArray:
        return DataPagingArrayJsonResponseMapper<I>()
            as BaseSuccessResponseMapper<I, O>;
    }
  }

  // ignore: avoid-dynamic
  O map(dynamic response, Decoder<I>? decoder);

  // ignore: avoid-dynamic
}

enum SuccessResponseMapperType {
  dataJsonObject,
  dataJsonArray,
  jsonObject,
  jsonArray,
  dataPagingArray,
}
