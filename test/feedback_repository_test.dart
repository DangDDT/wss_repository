import 'package:flutter_test/flutter_test.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/entities/feedback.dart';
import 'package:wss_repository/entities/group_feedback_by_rating.dart';
import 'package:wss_repository/repositories/feedback_repository.dart';
import 'package:wss_repository/requests/get_feedback_group_param.dart';
import 'package:wss_repository/requests/get_feedback_param.dart';
import 'package:wss_repository/wss_repository.dart';

import 'constants_test.dart';

void main() {
  group('FeedbackRepository', () {
    late FeedbackRepository feedbackRepository;
    String idToTestGetFeedbackById = '';
    String idToTestGetFeedbackByServiceId = '';

    setUp(() {
      WssRepository.init(
        baseUrl: ConstantsTest.baseUrl,
        isShowDioLogger: true,
        authConfig: AuthConfig(
          accessToken: ConstantsTest.accessToken,
        ),
      );
      feedbackRepository = FeedbackRepository();
    });

    test('should return a list of feedbacks', () async {
      final feedbacks = await feedbackRepository.getFeedbacks(
        param: GetFeedbackParam(
          pageSize: null,
          page: null,
          sortKey: null,
          sortOrder: null,
        ),
      );

      expect(feedbacks, isA<DataPagingListResponse<Feedback>>());
      expect(feedbacks.data, isNotEmpty);
      idToTestGetFeedbackById = feedbacks.data!.first.id!;
      idToTestGetFeedbackByServiceId = feedbacks.data!.first.service!.id!;
    });

    test('should return a feedback by id', () async {
      final feedback =
          await feedbackRepository.getFeedback(id: idToTestGetFeedbackById);
      expect(feedback, isNotNull);
      expect(feedback, isA<Feedback>());
    });

    test('should return a feedback by service id', () async {
      final feedback = await feedbackRepository.getFeedbackByServiceId(
        serviceId: idToTestGetFeedbackByServiceId,
      );
      expect(feedback, isNotNull);
      expect(feedback, isA<Feedback>());
    });

    test('should return a feedback group by rating', () async {
      final feedbackGroupByRating =
          await feedbackRepository.getFeedbackGroupByRating(
        param: GetFeedbackGroupByRatingParam(
          serviceId: idToTestGetFeedbackByServiceId,
        ),
      );
      expect(feedbackGroupByRating, isNotNull);
      expect(feedbackGroupByRating, isA<FeedbackGroupByRating>());
    });
  });
}
