// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'operator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Operator _$OperatorFromJson(Map<String, dynamic> json) {
  return _Operator.fromJson(json);
}

/// @nodoc
mixin _$Operator {
  int get operatorId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperatorCopyWith<Operator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperatorCopyWith<$Res> {
  factory $OperatorCopyWith(Operator value, $Res Function(Operator) then) =
      _$OperatorCopyWithImpl<$Res, Operator>;
  @useResult
  $Res call({int operatorId, String name});
}

/// @nodoc
class _$OperatorCopyWithImpl<$Res, $Val extends Operator>
    implements $OperatorCopyWith<$Res> {
  _$OperatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operatorId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      operatorId: null == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OperatorCopyWith<$Res> implements $OperatorCopyWith<$Res> {
  factory _$$_OperatorCopyWith(
          _$_Operator value, $Res Function(_$_Operator) then) =
      __$$_OperatorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int operatorId, String name});
}

/// @nodoc
class __$$_OperatorCopyWithImpl<$Res>
    extends _$OperatorCopyWithImpl<$Res, _$_Operator>
    implements _$$_OperatorCopyWith<$Res> {
  __$$_OperatorCopyWithImpl(
      _$_Operator _value, $Res Function(_$_Operator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operatorId = null,
    Object? name = null,
  }) {
    return _then(_$_Operator(
      operatorId: null == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Operator implements _Operator {
  const _$_Operator({required this.operatorId, required this.name});

  factory _$_Operator.fromJson(Map<String, dynamic> json) =>
      _$$_OperatorFromJson(json);

  @override
  final int operatorId;
  @override
  final String name;

  @override
  String toString() {
    return 'Operator(operatorId: $operatorId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Operator &&
            (identical(other.operatorId, operatorId) ||
                other.operatorId == operatorId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, operatorId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OperatorCopyWith<_$_Operator> get copyWith =>
      __$$_OperatorCopyWithImpl<_$_Operator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OperatorToJson(
      this,
    );
  }
}

abstract class _Operator implements Operator {
  const factory _Operator(
      {required final int operatorId,
      required final String name}) = _$_Operator;

  factory _Operator.fromJson(Map<String, dynamic> json) = _$_Operator.fromJson;

  @override
  int get operatorId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_OperatorCopyWith<_$_Operator> get copyWith =>
      throw _privateConstructorUsedError;
}
