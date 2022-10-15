import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConfigInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.connectTimeout = 20000;
    options.baseUrl = 'http://abctechapi-env.eba-3i75pkmj.us-east-2.elasticbeanstalk.com/';

    handler.next(options);
  }
}
