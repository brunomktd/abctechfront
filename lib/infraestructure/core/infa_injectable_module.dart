import 'package:abctechfront/infraestructure/core/interceptors/config_interceptor.dart';
import 'package:abctechfront/infraestructure/core/interceptors/debug_interceptor.dart';
import 'package:abctechfront/injection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InfraInjectableModule {
  @LazySingleton()
  Dio get dio => Dio()
    ..interceptors.addAll([
      getIt<ConfigInterceptor>(),
      getIt<DebugInterceptor>(),
    ]);

  @preResolve
  @LazySingleton()
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
