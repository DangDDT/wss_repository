import 'package:dio/dio.dart' as dio_package;
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:wss_repository/base/interceptors/dio_logger_interceptor.dart';
import 'package:wss_repository/base/mappers/exception_mapper/dio_exception_mapper.dart';

import '../../base/constants/response_mapper_constants.dart';
import '../../base/constants/server_timeout_constants.dart';
import '../../base/exceptions/custom/base/custom_exception.dart';
import '../../base/exceptions/custom/base/data_filter_mapper.dart';
import '../../base/interceptors/auth_interceptor.dart';
import '../../base/mappers/api_mappers/base/base_error_response_mapper.dart';
import '../../base/mappers/api_mappers/base/base_success_response_mapper.dart';
import '../../wss_repository.dart';

class DioClient {
  // static const tag = "${AppCore.tag}|DIO_CLIENT";
  static const tag = "DIO_CLIENT";

  ///Truyền api key nếu có
  final String? _apiKey;

  late final dio_package.Dio _dio;
  dio_package.Dio get dio => _dio;

  final SuccessResponseMapperType _successResponseMapperType;
  final ErrorResponseMapperType _errorResponseMapperType;
  final String _baseUrl;
  final bool _isShowLog;
  final IDioLoggerInterceptor _loggerInterceptor;

  DioClient({
    String? baseUrl,
    SuccessResponseMapperType? successResponseMapperType,
    ErrorResponseMapperType? errorResponseMapperType,
    bool isShowLog = true,
    String? apiKey,
    IDioLoggerInterceptor? loggerInterceptor,
    AuthConfig? authConfig,
  })  : _apiKey = apiKey,
        _baseUrl = baseUrl ?? '',
        _successResponseMapperType = successResponseMapperType ??
            ResponseMapperConstants.defaultSuccessResponseMapperType,
        _errorResponseMapperType = errorResponseMapperType ??
            ResponseMapperConstants.defaultErrorResponseMapperType,
        _isShowLog = isShowLog,
        _loggerInterceptor = loggerInterceptor ?? DioLoggerInterceptor() {
    _dio = dio_package.Dio(
      dio_package.BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: ServerTimeoutConstants.connectTimeout,
        sendTimeout: ServerTimeoutConstants.sendTimeout,
        receiveTimeout: ServerTimeoutConstants.receiveTimeout,
        headers: _apiKey != null ? {'apiKey': apiKey} : null,
      ),
    )..interceptors.addAll(
        [
          if (kDebugMode && _isShowLog) _loggerInterceptor,
          if (authConfig != null) AuthInterceptor(authConfig: authConfig),
        ],
      );
  }

  Future<T> request<T, D>(
    Function() request, {
    // ignore: avoid-dynamic
    Decoder<D>? decoder,
    SuccessResponseMapperType? successResponseMapperType,
    ErrorResponseMapperType? errorResponseMapperType,
    BaseErrorResponseMapper? errorResponseMapper,
    DataFilterMapperType? dataFilterType,
  }) async {
    try {
      final response = await request.call();
      var result = BaseSuccessResponseMapper<D, T>.fromType(
        successResponseMapperType ?? _successResponseMapperType,
      ).map(response, decoder);
      if (dataFilterType != null) {
        result =
            DataFilterMapper<T>.fromType(dataFilterType).filterData(result);
      }
      return result;
    } on CustomException {
      rethrow;
    } catch (error) {
      throw DioErrorMapper(
        errorResponseMapper ??
            BaseErrorResponseMapper.fromType(
                errorResponseMapperType ?? _errorResponseMapperType),
      ).map(error);
    }
  }
}
