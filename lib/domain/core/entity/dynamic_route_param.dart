import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_route_param.freezed.dart';
part 'dynamic_route_param.g.dart';

@freezed
class DynamicRouteParam<T> with _$DynamicRouteParam<T> {
  const DynamicRouteParam._();
  const factory DynamicRouteParam({
    required dynamic param,
  }) = _DynamicRouteParam<T>;

  T get castParam => cast<T>(param);

  factory DynamicRouteParam.fromJson(Map<String, dynamic> json) =>
      _$DynamicRouteParamFromJson(json);
}
