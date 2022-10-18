// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'validation_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValidationError<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(num failedValue) zeroValue,
    required TResult Function(T failedValue) emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(num failedValue)? zeroValue,
    TResult? Function(T failedValue)? emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(num failedValue)? zeroValue,
    TResult Function(T failedValue)? emptyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ZeroValue<T> value) zeroValue,
    required TResult Function(EmptyList<T> value) emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(ZeroValue<T> value)? zeroValue,
    TResult? Function(EmptyList<T> value)? emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ZeroValue<T> value)? zeroValue,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationErrorCopyWith<T, $Res> {
  factory $ValidationErrorCopyWith(
          ValidationError<T> value, $Res Function(ValidationError<T>) then) =
      _$ValidationErrorCopyWithImpl<T, $Res, ValidationError<T>>;
}

/// @nodoc
class _$ValidationErrorCopyWithImpl<T, $Res, $Val extends ValidationError<T>>
    implements $ValidationErrorCopyWith<T, $Res> {
  _$ValidationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListTooLongCopyWith<T, $Res> {
  factory _$$ListTooLongCopyWith(
          _$ListTooLong<T> value, $Res Function(_$ListTooLong<T>) then) =
      __$$ListTooLongCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValidationErrorCopyWithImpl<T, $Res, _$ListTooLong<T>>
    implements _$$ListTooLongCopyWith<T, $Res> {
  __$$ListTooLongCopyWithImpl(
      _$ListTooLong<T> _value, $Res Function(_$ListTooLong<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
    Object? max = null,
  }) {
    return _then(_$ListTooLong<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListTooLong<T> implements ListTooLong<T> {
  const _$ListTooLong({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValidationError<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTooLong<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListTooLongCopyWith<T, _$ListTooLong<T>> get copyWith =>
      __$$ListTooLongCopyWithImpl<T, _$ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(num failedValue) zeroValue,
    required TResult Function(T failedValue) emptyList,
  }) {
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(num failedValue)? zeroValue,
    TResult? Function(T failedValue)? emptyList,
  }) {
    return listTooLong?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(num failedValue)? zeroValue,
    TResult Function(T failedValue)? emptyList,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ZeroValue<T> value) zeroValue,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(ZeroValue<T> value)? zeroValue,
    TResult? Function(EmptyList<T> value)? emptyList,
  }) {
    return listTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ZeroValue<T> value)? zeroValue,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValidationError<T> {
  const factory ListTooLong(
      {required final T failedValue,
      required final int max}) = _$ListTooLong<T>;

  T get failedValue;
  int get max;
  @JsonKey(ignore: true)
  _$$ListTooLongCopyWith<T, _$ListTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ZeroValueCopyWith<T, $Res> {
  factory _$$ZeroValueCopyWith(
          _$ZeroValue<T> value, $Res Function(_$ZeroValue<T>) then) =
      __$$ZeroValueCopyWithImpl<T, $Res>;
  @useResult
  $Res call({num failedValue});
}

/// @nodoc
class __$$ZeroValueCopyWithImpl<T, $Res>
    extends _$ValidationErrorCopyWithImpl<T, $Res, _$ZeroValue<T>>
    implements _$$ZeroValueCopyWith<T, $Res> {
  __$$ZeroValueCopyWithImpl(
      _$ZeroValue<T> _value, $Res Function(_$ZeroValue<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$ZeroValue<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$ZeroValue<T> implements ZeroValue<T> {
  const _$ZeroValue({required this.failedValue});

  @override
  final num failedValue;

  @override
  String toString() {
    return 'ValidationError<$T>.zeroValue(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZeroValue<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZeroValueCopyWith<T, _$ZeroValue<T>> get copyWith =>
      __$$ZeroValueCopyWithImpl<T, _$ZeroValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(num failedValue) zeroValue,
    required TResult Function(T failedValue) emptyList,
  }) {
    return zeroValue(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(num failedValue)? zeroValue,
    TResult? Function(T failedValue)? emptyList,
  }) {
    return zeroValue?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(num failedValue)? zeroValue,
    TResult Function(T failedValue)? emptyList,
    required TResult orElse(),
  }) {
    if (zeroValue != null) {
      return zeroValue(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ZeroValue<T> value) zeroValue,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return zeroValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(ZeroValue<T> value)? zeroValue,
    TResult? Function(EmptyList<T> value)? emptyList,
  }) {
    return zeroValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ZeroValue<T> value)? zeroValue,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (zeroValue != null) {
      return zeroValue(this);
    }
    return orElse();
  }
}

abstract class ZeroValue<T> implements ValidationError<T> {
  const factory ZeroValue({required final num failedValue}) = _$ZeroValue<T>;

  num get failedValue;
  @JsonKey(ignore: true)
  _$$ZeroValueCopyWith<T, _$ZeroValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyListCopyWith<T, $Res> {
  factory _$$EmptyListCopyWith(
          _$EmptyList<T> value, $Res Function(_$EmptyList<T>) then) =
      __$$EmptyListCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyListCopyWithImpl<T, $Res>
    extends _$ValidationErrorCopyWithImpl<T, $Res, _$EmptyList<T>>
    implements _$$EmptyListCopyWith<T, $Res> {
  __$$EmptyListCopyWithImpl(
      _$EmptyList<T> _value, $Res Function(_$EmptyList<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$EmptyList<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyList<T> implements EmptyList<T> {
  const _$EmptyList({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValidationError<$T>.emptyList(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyList<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyListCopyWith<T, _$EmptyList<T>> get copyWith =>
      __$$EmptyListCopyWithImpl<T, _$EmptyList<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(num failedValue) zeroValue,
    required TResult Function(T failedValue) emptyList,
  }) {
    return emptyList(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int max)? listTooLong,
    TResult? Function(num failedValue)? zeroValue,
    TResult? Function(T failedValue)? emptyList,
  }) {
    return emptyList?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(num failedValue)? zeroValue,
    TResult Function(T failedValue)? emptyList,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ZeroValue<T> value) zeroValue,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return emptyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(ZeroValue<T> value)? zeroValue,
    TResult? Function(EmptyList<T> value)? emptyList,
  }) {
    return emptyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ZeroValue<T> value)? zeroValue,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList(this);
    }
    return orElse();
  }
}

abstract class EmptyList<T> implements ValidationError<T> {
  const factory EmptyList({required final T failedValue}) = _$EmptyList<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  _$$EmptyListCopyWith<T, _$EmptyList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
