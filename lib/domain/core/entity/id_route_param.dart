import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_route_param.freezed.dart';
part 'id_route_param.g.dart';

@freezed
class IdRouteParam with _$IdRouteParam {
  const factory IdRouteParam({
    required int id,
    int? serverId,
  }) = _IdRouteParam;

  factory IdRouteParam.fromJson(Map<String, dynamic> json) =>
      _$IdRouteParamFromJson(json);
}
