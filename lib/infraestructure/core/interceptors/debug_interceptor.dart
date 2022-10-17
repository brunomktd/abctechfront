// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class DebugInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    print(
      'HTTP: calling ${options.method} ${options.uri.path}" with params "${options.queryParameters}" with "${options.data}"',
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
      'HTTP: response from ${response.requestOptions.method} "${response.requestOptions.path}" with "${response.data}"',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print('HTTP: $err');
    super.onError(err, handler);
  }
}
