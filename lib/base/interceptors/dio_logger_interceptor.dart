import 'package:dio/dio.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

abstract class IDioLoggerInterceptor extends Interceptor {}

class DioLoggerInterceptor extends TalkerDioLogger
    implements IDioLoggerInterceptor {
  static final _talker = Talker();
  static final _settings = TalkerDioLoggerSettings(
    printRequestHeaders: true,
    printResponseHeaders: true,
    requestPen: AnsiPen()..gray(),
    responsePen: AnsiPen()..green(),
    errorPen: AnsiPen()..red(),
    printRequestData: true,
    printResponseData: true,
    printResponseMessage: true,
  );
  DioLoggerInterceptor()
      : super(
          talker: _talker,
          settings: _settings,
        );
}
