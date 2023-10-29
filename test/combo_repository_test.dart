import 'package:flutter_test/flutter_test.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/entities/combo.dart';
import 'package:wss_repository/repositories/combo_repository.dart';
import 'package:wss_repository/requests/get_combo_param.dart';
import 'package:wss_repository/wss_repository.dart';

import 'constants_test.dart';

void main() {
  group('ComboRepository', () {
    late ComboRepository comboRepository;
    String testToId = '';

    setUp(() {
      WssRepository.init(
        baseUrl: ConstantsTest.baseUrl,
        isShowDioLogger: true,
        authConfig: AuthConfig(
          accessToken: ConstantsTest.accessToken,
        ),
      );
      comboRepository = ComboRepository();
    });

    test('should return a list of combos', () async {
      final combos = await comboRepository.getCombos(
        param: GetComboParam(
          name: null,
          pageSize: null,
          page: null,
          sortKey: null,
          sortOrder: null,
          status: null,
        ),
      );

      expect(combos, isA<DataPagingListResponse<Combo>>());
      expect(combos.data, isNotEmpty);
      testToId = combos.data!.first.id!;
    });

    test('should return a combo by id', () async {
      final combo = await comboRepository.getCombo(id: testToId);
      expect(combo, isNotNull);
      expect(combo, isA<Combo>());
    });
  });
}
