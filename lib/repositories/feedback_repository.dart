import 'package:get/get.dart';
import 'package:wss_repository/base/models/base/data_paging_list_response.dart';
import 'package:wss_repository/entities/group_feedback_by_rating.dart';
import 'package:wss_repository/requests/get_feedback_group_param.dart';

import '../base/mappers/api_mappers/base/base_success_response_mapper.dart';
import '../clients/base/dio_client.dart';
import '../clients/wss_api_client.dart';
import '../entities/feedback.dart';
import '../requests/get_feedback_param.dart';

abstract class IFeedbackRepository {
  /// Lấy danh sách feedback
  Future<DataPagingListResponse<Feedback>> getFeedbacks({
    required GetFeedbackParam param,
  });

  /// Lấy danh sách feedback group by rating
  Future<FeedbackGroupByRating> getFeedbackGroupByRating({
    required GetFeedbackGroupByRatingParam param,
  });

  /// Lấy feedback theo id
  Future<Feedback> getFeedback({required String id});

  /// Lấy feedback theo service id
  Future<Feedback> getFeedbackByServiceId({required String serviceId});
}

class FeedbackRepository implements IFeedbackRepository {
  final _dioClient = Get.find<DioClient>();
  final _client = Get.find<WssApiClient>();
  @override
  Future<Feedback> getFeedback({required String id}) async {
    final response = await _dioClient.request<Feedback, Feedback>(
      () => _client.getFeedback(id),
      decoder: (json) => Feedback.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }

  @override
  Future<Feedback> getFeedbackByServiceId({required String serviceId}) async {
    final response = await _dioClient.request<Feedback, Feedback>(
      () => _client.getFeedbackByServiceId(serviceId),
      decoder: (json) => Feedback.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }

  @override
  Future<FeedbackGroupByRating> getFeedbackGroupByRating({
    required GetFeedbackGroupByRatingParam param,
  }) async {
    final response =
        await _dioClient.request<FeedbackGroupByRating, FeedbackGroupByRating>(
      () => _client.getFeedbacksGroupByRating(param),
      decoder: (json) => FeedbackGroupByRating.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }

  @override
  Future<DataPagingListResponse<Feedback>> getFeedbacks({
    required GetFeedbackParam param,
  }) async {
    final response =
        await _dioClient.request<DataPagingListResponse<Feedback>, Feedback>(
      () => _client.getFeedbacks(param),
      decoder: (json) => Feedback.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.dataPagingArray,
    );
    return response;
  }
}
