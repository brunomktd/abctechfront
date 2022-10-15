// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'id_route_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdRouteParam _$IdRouteParamFromJson(Map<String, dynamic> json) {
  return _IdRouteParam.fromJson(json);
}

/// @nodoc
mixin _$IdRouteParam {
  int get id => throw _privateConstructorUsedError;
  int? get serverId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdRouteParamCopyWith<IdRouteParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdRouteParamCopyWith<$Res> {
  factory $IdRouteParamCopyWith(
          IdRouteParam value, $Res Function(IdRouteParam) then) =
      _$IdRouteParamCopyWithImpl<$Res, IdRouteParam>;
  @useResult
  $Res call({int id, int? serverId});
}

/// @nodoc
class _$IdRouteParamCopyWithImpl<$Res, $Val extends IdRouteParam>
    implements $IdRouteParamCopyWith<$Res> {
  _$IdRouteParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serverId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      serverId: freezed == serverId
          ? _value.serverId
          : serverId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdRouteParamCopyWith<$Res>
    implements $IdRouteParamCopyWith<$Res> {
  factory _$$_IdRouteParamCopyWith(
          _$_IdRouteParam value, $Res Function(_$_IdRouteParam) then) =
      __$$_IdRouteParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int? serverId});
}

/// @nodoc
class __$$_IdRouteParamCopyWithImpl<$Res>
    extends _$IdRouteParamCopyWithImpl<$Res, _$_IdRouteParam>
    implements _$$_IdRouteParamCopyWith<$Res> {
  __$$_IdRouteParamCopyWithImpl(
      _$_IdRouteParam _value, $Res Function(_$_IdRouteParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serverId = freezed,
  }) {
    return _then(_$_IdRouteParam(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      serverId: freezed == serverId
          ? _value.serverId
          : serverId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdRouteParam implements _IdRouteParam {
  const _$_IdRouteParam({required this.id, this.serverId});

  factory _$_IdRouteParam.fromJson(Map<String, dynamic> json) =>
      _$$_IdRouteParamFromJson(json);

  @override
  final int id;
  @override
  final int? serverId;

  @override
  String toString() {
    return 'IdRouteParam(id: $id, serverId: $serverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdRouteParam &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.serverId, serverId) ||
                other.serverId == serverId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, serverId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdRouteParamCopyWith<_$_IdRouteParam> get copyWith =>
      __$$_IdRouteParamCopyWithImpl<_$_IdRouteParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdRouteParamToJson(
      this,
    );
  }
}

abstract class _IdRouteParam implements IdRouteParam {
  const factory _IdRouteParam({required final int id, final int? serverId}) =
      _$_IdRouteParam;

  factory _IdRouteParam.fromJson(Map<String, dynamic> json) =
      _$_IdRouteParam.fromJson;

  @override
  int get id;
  @override
  int? get serverId;
  @override
  @JsonKey(ignore: true)
  _$$_IdRouteParamCopyWith<_$_IdRouteParam> get copyWith =>
      throw _privateConstructorUsedError;
}
