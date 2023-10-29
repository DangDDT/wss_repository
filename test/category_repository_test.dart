import 'package:flutter_test/flutter_test.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/entities/category.dart';
import 'package:wss_repository/repositories/category_repository.dart';
import 'package:wss_repository/requests/get_category_param.dart';
import 'package:wss_repository/wss_repository.dart';

import 'constants_test.dart';

void main() {
  group('CategoryRepository', () {
    late CategoryRepository categoryRepository;
    String idToTest = '';

    setUp(() {
      WssRepository.init(
        baseUrl: ConstantsTest.baseUrl,
        isShowDioLogger: true,
        authConfig: AuthConfig(
          accessToken: ConstantsTest.accessToken,
        ),
      );
      categoryRepository = CategoryRepository();
    });

    test('should return a list of categories', () async {
      final categories = await categoryRepository.getCategories(
        param: GetCategoryParam(
          name: null,
          pageSize: null,
          page: null,
          sortKey: null,
          sortOrder: null,
        ),
      );
      expect(categories, isA<DataPagingListResponse<Category>>());
      expect(categories.data, isNotEmpty);
      idToTest = categories.data!.first.id!;
    });

    test('should return a category by id', () async {
      final category = await categoryRepository.getCategory(id: idToTest);
      expect(category, isA<Category>());
      expect(category, isNotNull);
    });
  });
}
