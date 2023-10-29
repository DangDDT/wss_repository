class ServerTimeoutConstants {
  const ServerTimeoutConstants._();
  static const connectTimeoutInMs = 60000;
  static const receiveTimeoutInMs = 60000;
  static const sendTimeoutInMs = 60000;

  static const connectTimeout = Duration(milliseconds: connectTimeoutInMs);
  static const receiveTimeout = Duration(milliseconds: receiveTimeoutInMs);
  static const sendTimeout = Duration(milliseconds: sendTimeoutInMs);
}
