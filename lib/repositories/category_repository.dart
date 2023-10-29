import 'package:get/get.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/requests/get_category_param.dart';

import '../base/mappers/api_mappers/base/base_success_response_mapper.dart';
import '../clients/base/dio_client.dart';
import '../clients/wss_api_client.dart';
import '../entities/category.dart';

/// [ICategoryRepository] là interface của [CategoryRepository]
/// - getCategories: Lấy danh sách category
/// - getCategory: Lấy category theo id
abstract class ICategoryRepository {
  /// Lấy danh sách category
  Future<DataPagingListResponse<Category>> getCategories({
    required GetCategoryParam param,
  });

  /// Lấy category theo id
  Future<Category> getCategory({
    required String id,
  });
}

class CategoryRepository implements ICategoryRepository {
  final _dioClient = Get.find<DioClient>();
  final _client = Get.find<WssApiClient>();

  @override
  Future<DataPagingListResponse<Category>> getCategories({
    required GetCategoryParam param,
  }) async {
    final response =
        await _dioClient.request<DataPagingListResponse<Category>, Category>(
      () => _client.getCategories(param),
      decoder: (json) => Category.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.dataPagingArray,
    );
    return response;
  }

  @override
  Future<Category> getCategory({required String id}) async {
    final response = await _dioClient.request<Category, Category>(
      () => _client.getCategory(id),
      decoder: (json) => Category.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }
}
