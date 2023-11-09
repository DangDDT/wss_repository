import 'package:get/get.dart';
import 'package:wss_repository/base/mappers/api_mappers/base/base_success_response_mapper.dart';
import 'package:wss_repository/clients/base/dio_client.dart';
import 'package:wss_repository/clients/wss_api_client.dart';
import 'package:wss_repository/requests/post_comment_body.dart';

abstract class ICommentRepository {
  Future<bool> postComment(PostCommentBody body);
}

class CommentRepository implements ICommentRepository {
  final _dioClient = Get.find<DioClient>();
  final _client = Get.find<WssApiClient>();
  @override
  Future<bool> postComment(PostCommentBody body) async {
    final response = await _dioClient.request<bool, bool>(
      () => _client.postComment(body),
      decoder: (json) => true,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }
}
