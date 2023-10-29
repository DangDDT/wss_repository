import 'package:get/get.dart';
import 'package:wss_repository/entities/user_info.dart';

import '../base/mappers/api_mappers/base/base_success_response_mapper.dart';
import '../clients/base/dio_client.dart';
import '../clients/wss_api_client.dart';
import '../requests/update_profile_body.dart';

///[IAccountRepository] là interface của [AccountRepository]
/// - updateProfile: Cập nhật thông tin cá nhân
/// - getUserInfo: Đăng nhập thành công lấy thông tin user
abstract class IAccountRepository {
  /// Cập nhật thông tin cá nhân
  Future<bool> updateProfile({required UpdateProfileBody body});

  /// Đăng nhập thành công lấy thông tin user
  Future<UserInfo> getUserInfo({required String token, String? baseUrl});
}

class AccountRepository implements IAccountRepository {
  final _dioClient = Get.find<DioClient>();
  final _client = Get.find<WssApiClient>();

  @override
  Future<bool> updateProfile({required UpdateProfileBody body}) async {
    try {
      await _dioClient.request(
        () => _client.updateProfile(body),
        decoder: (json) => json,
        successResponseMapperType: SuccessResponseMapperType.jsonObject,
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<UserInfo> getUserInfo({required String token, String? baseUrl}) async {
    final response = await DioClient(
      baseUrl: baseUrl ?? 'https://api.loveweddingservice.shop/api/v2',
      isShowLog: true,
    ).request<UserInfo, UserInfo>(
      () => _client.getUserInfo(token),
      decoder: (json) => UserInfo.fromMap(json),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
    return response;
  }
}
