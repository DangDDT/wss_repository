import 'package:dio/dio.dart';
import 'package:wss_repository/wss_repository.dart';

import '../helpers/logger.dart';

abstract class IAuthInterceptor extends Interceptor {}

class AuthInterceptor implements IAuthInterceptor {
  final AuthConfig authConfig;
  AuthInterceptor({required this.authConfig});

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final accessToken = await authConfig.accessToken?.call();
      if (accessToken == null) return handler.next(options);
      options.headers['Authorization'] = 'Bearer $accessToken';
      options.headers['Accept'] = '*/*';
      return handler.next(options);
    } catch (error, stackTrace) {
      Logger.log(
        error.toString(),
        name: 'RefreshTokenInterceptor_onRequest',
        stackTrace: stackTrace,
      );
      return handler.next(options);
    }
  }

  @override
  void onError(DioException error, ErrorInterceptorHandler handler) async {
    if (error.response != null) {
      if (error.response!.statusCode == 401) {
        try {
          final requestOptions = error.requestOptions;
          final newAccessToken =
              await authConfig.onRefreshTokenCallback?.call();
          if (newAccessToken == null) return handler.next(error);
          final opts = Options(method: requestOptions.method);
          final dioClient = Dio();
          dioClient.options.headers['Authorization'] = 'Bearer $newAccessToken';
          dioClient.options.headers['Accept'] = '*/*';
          final response = await dioClient.request<dynamic>(
            requestOptions.path,
            options: opts,
            cancelToken: requestOptions.cancelToken,
            onReceiveProgress: requestOptions.onReceiveProgress,
            data: requestOptions.data,
            queryParameters: requestOptions.queryParameters,
          );

          return handler.resolve(response);
        } catch (e) {
          return handler.next(error);
        }
      } else {
        return handler.next(error);
      }
    }
    return handler.next(error);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) =>
      handler.next(response);
}
