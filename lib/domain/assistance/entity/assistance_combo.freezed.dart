// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assistance_combo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssistanceCombo _$AssistanceComboFromJson(Map<String, dynamic> json) {
  return _AssistanceCombo.fromJson(json);
}

/// @nodoc
mixin _$AssistanceCombo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssistanceComboCopyWith<AssistanceCombo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistanceComboCopyWith<$Res> {
  factory $AssistanceComboCopyWith(
          AssistanceCombo value, $Res Function(AssistanceCombo) then) =
      _$AssistanceComboCopyWithImpl<$Res, AssistanceCombo>;
  @useResult
  $Res call({int id, String name, String description});
}

/// @nodoc
class _$AssistanceComboCopyWithImpl<$Res, $Val extends AssistanceCombo>
    implements $AssistanceComboCopyWith<$Res> {
  _$AssistanceComboCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssistanceComboCopyWith<$Res>
    implements $AssistanceComboCopyWith<$Res> {
  factory _$$_AssistanceComboCopyWith(
          _$_AssistanceCombo value, $Res Function(_$_AssistanceCombo) then) =
      __$$_AssistanceComboCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String description});
}

/// @nodoc
class __$$_AssistanceComboCopyWithImpl<$Res>
    extends _$AssistanceComboCopyWithImpl<$Res, _$_AssistanceCombo>
    implements _$$_AssistanceComboCopyWith<$Res> {
  __$$_AssistanceComboCopyWithImpl(
      _$_AssistanceCombo _value, $Res Function(_$_AssistanceCombo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_AssistanceCombo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssistanceCombo implements _AssistanceCombo {
  const _$_AssistanceCombo(
      {required this.id, required this.name, required this.description});

  factory _$_AssistanceCombo.fromJson(Map<String, dynamic> json) =>
      _$$_AssistanceComboFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'AssistanceCombo(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssistanceCombo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssistanceComboCopyWith<_$_AssistanceCombo> get copyWith =>
      __$$_AssistanceComboCopyWithImpl<_$_AssistanceCombo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssistanceComboToJson(
      this,
    );
  }
}

abstract class _AssistanceCombo implements AssistanceCombo {
  const factory _AssistanceCombo(
      {required final int id,
      required final String name,
      required final String description}) = _$_AssistanceCombo;

  factory _AssistanceCombo.fromJson(Map<String, dynamic> json) =
      _$_AssistanceCombo.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_AssistanceComboCopyWith<_$_AssistanceCombo> get copyWith =>
      throw _privateConstructorUsedError;
}
