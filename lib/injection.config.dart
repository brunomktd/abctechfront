// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/order/order_bloc.dart' as _i15;
import 'application/register/register_bloc.dart' as _i16;
import 'domain/assistance/interface/i_assistance_facade.dart' as _i6;
import 'domain/client/interface/i_client_facade.dart' as _i8;
import 'domain/operator/interface/i_operator_facade.dart' as _i11;
import 'domain/order/interface/i_order_facade.dart' as _i13;
import 'infraestructure/assistance/assistance_facade.dart' as _i7;
import 'infraestructure/client/client_facade.dart' as _i9;
import 'infraestructure/core/geolocation/geolocation_facade.dart' as _i10;
import 'infraestructure/core/infa_injectable_module.dart' as _i17;
import 'infraestructure/core/interceptors/config_interceptor.dart' as _i3;
import 'infraestructure/core/interceptors/debug_interceptor.dart' as _i4;
import 'infraestructure/operator/operator_facade.dart' as _i12;
import 'infraestructure/order/order_facade.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
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
  gh.lazySingleton<_i8.IClientFacade>(() => _i9.ClientFacade(get<_i5.Dio>()));
  gh.lazySingleton<_i10.IGeolocationFacade>(() => _i10.GeolocationFacade());
  gh.lazySingleton<_i11.IOperatorFacade>(
      () => _i12.OperatorFacade(get<_i5.Dio>()));
  gh.lazySingleton<_i13.IOrderFacade>(() => _i14.OrderFacade(get<_i5.Dio>()));
  gh.factory<_i15.OrderBloc>(() => _i15.OrderBloc(
        get<_i13.IOrderFacade>(),
        get<_i8.IClientFacade>(),
        get<_i11.IOperatorFacade>(),
        get<_i10.IGeolocationFacade>(),
      ));
  gh.factory<_i16.RegisterBloc>(() => _i16.RegisterBloc(
        get<_i6.IAssistanceFacade>(),
        get<_i8.IClientFacade>(),
        get<_i11.IOperatorFacade>(),
        get<_i13.IOrderFacade>(),
      ));
  return get;
}

class _$InfraInjectableModule extends _i17.InfraInjectableModule {}
