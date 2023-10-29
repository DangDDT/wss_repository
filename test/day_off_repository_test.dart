import 'package:flutter_test/flutter_test.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/entities/day_off.dart';
import 'package:wss_repository/repositories/day_off_repository.dart';
import 'package:wss_repository/requests/get_day_off_param.dart';
import 'package:wss_repository/requests/post_day_off_body.dart';
import 'package:wss_repository/requests/put_day_off_body.dart';
import 'package:wss_repository/wss_repository.dart';

import 'constants_test.dart';

void main() {
  group('DayOffRepository', () {
    late DayOffRepository dayOffRepository;
    String idToTest = '';
    DateTime dateToTest = DateTime.now();

    setUp(() {
      WssRepository.init(
        baseUrl: ConstantsTest.baseUrl,
        isShowDioLogger: true,
        authConfig: AuthConfig(
          accessToken: ConstantsTest.accessToken,
        ),
      );
      dayOffRepository = DayOffRepository();
    });

    test('should return a list of day offs', () async {
      final dayOffs = await dayOffRepository.getDayOffs(
        param: GetDayOffParam(
          fromDate: null,
          toDate: null,
          status: null,
          pageSize: null,
          page: null,
          sortKey: null,
          sortOrder: null,
        ),
      );
      expect(dayOffs, isA<DataPagingListResponse<DayOff>>());
      expect(dayOffs.data, isNotEmpty);
    });

    test('should create a day off', () async {
      dateToTest = DateTime.now().add(const Duration(days: 5));
      final dayOff = await dayOffRepository.post(
        body: PostDayOffBody(
          day: dateToTest,
          reason: 'test',
        ),
      );
      expect(dayOff, isA<DayOff>());
      expect(dayOff, isNotNull);
      idToTest = dayOff.id!;
    });

    test('should update a day off', () async {
      final dayOff = await dayOffRepository.put(
        id: idToTest,
        body: PutDayOffBody(
          day: dateToTest,
          reason: 'test',
        ),
      );
      expect(dayOff, isA<DayOff>());
      expect(dayOff, isNotNull);
    });

    test('should delete a day off', () async {
      final result = await dayOffRepository.delete(id: idToTest);
      expect(result, isA<DayOff>());
    });
  });
}
