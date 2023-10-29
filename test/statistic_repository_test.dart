import 'package:flutter_test/flutter_test.dart';
import 'package:wss_repository/entities/task_count.dart';
import 'package:wss_repository/repositories/statistic_repository.dart';
import 'package:wss_repository/requests/get_task_count_param.dart';
import 'package:wss_repository/wss_repository.dart';

import 'constants_test.dart';

void main() {
  group('StatisticRepository', () {
    late StatisticRepository statisticRepository;

    setUp(() {
      WssRepository.init(
        baseUrl: ConstantsTest.baseUrl,
        isShowDioLogger: true,
        authConfig: AuthConfig(
          accessToken: ConstantsTest.accessToken,
        ),
      );
      statisticRepository = StatisticRepository();
    });

    test('should return a list of statistics', () async {
      final statistics = await statisticRepository.getStatisticTaskCount(
        param: GetStatisticTaskCountParam(
          fromDate: null,
          toDate: null,
        ),
      );
      expect(statistics, isA<List<TaskCount>>());
      expect(statistics, isNotEmpty);
    });
  });
}
