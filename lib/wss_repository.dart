library wss_repository;

import 'package:get/get.dart';
import 'package:wss_repository/base/interceptors/dio_logger_interceptor.dart';
import 'package:wss_repository/repositories/account_repository.dart';
import 'package:wss_repository/repositories/category_repository.dart';
import 'package:wss_repository/repositories/combo_repository.dart';
import 'package:wss_repository/repositories/comment_repository.dart';
import 'package:wss_repository/repositories/day_off_repository.dart';
import 'package:wss_repository/repositories/feedback_repository.dart';
import 'package:wss_repository/repositories/statistic_repository.dart';

import 'clients/base/dio_client.dart';
import 'clients/wss_api_client.dart';
import 'repositories/service_repository.dart';
import 'repositories/task_repository.dart';

export 'repositories/service_repository.dart'
    show IServiceRepository
    hide ServiceRepository;

export '/repositories/task_repository.dart'
    show ITaskRepository
    hide TaskRepository;

export '/repositories/account_repository.dart'
    show IAccountRepository
    hide AccountRepository;

export '/repositories/category_repository.dart'
    show ICategoryRepository
    hide CategoryRepository;

export '/repositories/combo_repository.dart'
    show IComboRepository
    hide ComboRepository;

export '/repositories/comment_repository.dart'
    show ICommentRepository
    hide CommentRepository;
export '/repositories/day_off_repository.dart'
    show IDayOffRepository
    hide DayOffRepository;

export '/repositories/feedback_repository.dart'
    show IFeedbackRepository
    hide FeedbackRepository;

export '/repositories/statistic_repository.dart'
    show IStatisticRepository
    hide StatisticRepository;

class WssRepository {
  static String get tag => 'WssRepository';

  static Future<void> init({
    String baseUrl = 'https://api.loveweddingservice.shop/api/v2',
    bool isShowDioLogger = true,
    IDioLoggerInterceptor? loggerInterceptor,
    String? apiKey,
    IAccountRepository? accountRepository,
    ICategoryRepository? categoryRepository,
    IComboRepository? comboRepository,
    ICommentRepository? commentRepository,
    IDayOffRepository? dayOffRepository,
    IFeedbackRepository? feedbackRepository,
    IStatisticRepository? statisticRepository,
    IServiceRepository? serviceRepository,
    ITaskRepository? taskRepository,
    AuthConfig? authConfig,
  }) async {
    final dioClient = Get.put<DioClient>(
      DioClient(
        baseUrl: baseUrl,
        isShowLog: isShowDioLogger,
        loggerInterceptor: loggerInterceptor,
        apiKey: apiKey,
        authConfig: authConfig,
      ),
    ).dio;
    Get
      ..put<WssApiClient>(
        WssApiClient(
          dioClient,
          baseUrl: dioClient.options.baseUrl,
        ),
      )
      ..put<IAccountRepository>(
        accountRepository ?? AccountRepository(),
      )
      ..put<ICategoryRepository>(
        categoryRepository ?? CategoryRepository(),
      )
      ..put<IComboRepository>(
        comboRepository ?? ComboRepository(),
      )
      ..put<ICommentRepository>(
        commentRepository ?? CommentRepository(),
      )
      ..put<IDayOffRepository>(
        dayOffRepository ?? DayOffRepository(),
      )
      ..put<IFeedbackRepository>(
        feedbackRepository ?? FeedbackRepository(),
      )
      ..put<IStatisticRepository>(
        statisticRepository ?? StatisticRepository(),
      )
      ..put<IServiceRepository>(
        serviceRepository ?? ServiceRepository(),
      )
      ..put<ITaskRepository>(
        taskRepository ?? TaskRepository(),
      );
  }
}

class AuthConfig {
  /// [accessToken] là callback được gọi để truyền accesstoken vào header của api
  final OnGetTokenCallback? accessToken;

  /// [onRefreshTokenCallback] là callback được gọi khi có lỗi xảy ra với api
  final OnRefreshTokenCallback? onRefreshTokenCallback;

  /// [onUnauthorizedCallback] là khi có lỗi 401 thì sẽ gọi callback này
  final OnUnauthorizedCallback? onUnauthorizedCallback;

  AuthConfig({
    this.accessToken,
    this.onRefreshTokenCallback,
    this.onUnauthorizedCallback,
  });
}

typedef OnGetTokenCallback = Future<String?> Function();
typedef OnRefreshTokenCallback = Future<String?> Function();
typedef OnUnauthorizedCallback = Future<void> Function();
