// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import 'application/order/order_bloc.dart' as _i11;
import 'application/register/register_bloc.dart' as _i12;
import 'domain/assistance/interface/i_assistance_facade.dart' as _i6;
import 'domain/order/interface/i_order_facade.dart' as _i9;
import 'infraestructure/assistance/assistance_facade.dart' as _i7;
import 'infraestructure/core/geolocation/geolocation_facade.dart' as _i8;
import 'infraestructure/core/infa_injectable_module.dart' as _i14;
import 'infraestructure/core/interceptors/config_interceptor.dart' as _i3;
import 'infraestructure/core/interceptors/debug_interceptor.dart' as _i4;
import 'infraestructure/order/order_facade.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final infraInjectableModule = _$InfraInjectableModule();
  gh.factory<_i3.ConfigInterceptor>(() => _i3.ConfigInterceptor());
  gh.factory<_i4.DebugInterceptor>(() => _i4.DebugInterceptor());
  gh.lazySingleton<_i5.Dio>(() => infraInjectableModule.dio);
  gh.lazySingleton<_i6.IAssistanceFacade>(
      () => _i7.AssistanceFacade(get<_i5.Dio>()));
  gh.lazySingleton<_i8.IGeolocationFacade>(() => _i8.GeolocationFacade());
  gh.lazySingleton<_i9.IOrderFacade>(() => _i10.OrderFacade(get<_i5.Dio>()));
  gh.factory<_i11.OrderBloc>(() => _i11.OrderBloc(
        get<_i9.IOrderFacade>(),
        get<_i8.IGeolocationFacade>(),
      ));
  gh.factory<_i12.RegisterBloc>(() => _i12.RegisterBloc(
        get<_i6.IAssistanceFacade>(),
        get<_i9.IOrderFacade>(),
      ));
  await gh.lazySingletonAsync<_i13.SharedPreferences>(
    () => infraInjectableModule.prefs,
    preResolve: true,
  );
  return get;
}

class _$InfraInjectableModule extends _i14.InfraInjectableModule {}
