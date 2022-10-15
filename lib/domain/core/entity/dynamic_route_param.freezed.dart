// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dynamic_route_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DynamicRouteParam<T> _$DynamicRouteParamFromJson<T>(Map<String, dynamic> json) {
  return _DynamicRouteParam<T>.fromJson(json);
}

/// @nodoc
mixin _$DynamicRouteParam<T> {
  dynamic get param => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicRouteParamCopyWith<T, DynamicRouteParam<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicRouteParamCopyWith<T, $Res> {
  factory $DynamicRouteParamCopyWith(DynamicRouteParam<T> value,
          $Res Function(DynamicRouteParam<T>) then) =
      _$DynamicRouteParamCopyWithImpl<T, $Res, DynamicRouteParam<T>>;
  @useResult
  $Res call({dynamic param});
}

/// @nodoc
class _$DynamicRouteParamCopyWithImpl<T, $Res,
        $Val extends DynamicRouteParam<T>>
    implements $DynamicRouteParamCopyWith<T, $Res> {
  _$DynamicRouteParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_value.copyWith(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DynamicRouteParamCopyWith<T, $Res>
    implements $DynamicRouteParamCopyWith<T, $Res> {
  factory _$$_DynamicRouteParamCopyWith(_$_DynamicRouteParam<T> value,
          $Res Function(_$_DynamicRouteParam<T>) then) =
      __$$_DynamicRouteParamCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({dynamic param});
}

/// @nodoc
class __$$_DynamicRouteParamCopyWithImpl<T, $Res>
    extends _$DynamicRouteParamCopyWithImpl<T, $Res, _$_DynamicRouteParam<T>>
    implements _$$_DynamicRouteParamCopyWith<T, $Res> {
  __$$_DynamicRouteParamCopyWithImpl(_$_DynamicRouteParam<T> _value,
      $Res Function(_$_DynamicRouteParam<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$_DynamicRouteParam<T>(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DynamicRouteParam<T> extends _DynamicRouteParam<T> {
  const _$_DynamicRouteParam({required this.param}) : super._();

  factory _$_DynamicRouteParam.fromJson(Map<String, dynamic> json) =>
      _$$_DynamicRouteParamFromJson(json);

  @override
  final dynamic param;

  @override
  String toString() {
    return 'DynamicRouteParam<$T>(param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DynamicRouteParam<T> &&
            const DeepCollectionEquality().equals(other.param, param));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(param));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DynamicRouteParamCopyWith<T, _$_DynamicRouteParam<T>> get copyWith =>
      __$$_DynamicRouteParamCopyWithImpl<T, _$_DynamicRouteParam<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DynamicRouteParamToJson<T>(
      this,
    );
  }
}

abstract class _DynamicRouteParam<T> extends DynamicRouteParam<T> {
  const factory _DynamicRouteParam({required final dynamic param}) =
      _$_DynamicRouteParam<T>;
  const _DynamicRouteParam._() : super._();

  factory _DynamicRouteParam.fromJson(Map<String, dynamic> json) =
      _$_DynamicRouteParam<T>.fromJson;

  @override
  dynamic get param;
  @override
  @JsonKey(ignore: true)
  _$$_DynamicRouteParamCopyWith<T, _$_DynamicRouteParam<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
