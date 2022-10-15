import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
// ignore: depend_on_referenced_packages
import 'package:logging/logging.dart';

@injectable
class DebugInterceptor extends Interceptor {
  static final _log = Logger("DebugInterceptor");

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    _log.finest(
      'calling ${options.method} ${options.uri}" with "${options.data}"',
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _log.finest(
      'response from ${response.requestOptions.method} "${response.requestOptions.path}" with "${response.data}"',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    _log.severe(err);
    super.onError(err, handler);
  }
}
