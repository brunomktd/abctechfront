// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderDto {
  Id get clientId => throw _privateConstructorUsedError;
  Id get operatorId => throw _privateConstructorUsedError;
  CommonString get orderNumber => throw _privateConstructorUsedError;
  List<Id> get services => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDtoCopyWith<OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDtoCopyWith<$Res> {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) then) =
      _$OrderDtoCopyWithImpl<$Res, OrderDto>;
  @useResult
  $Res call(
      {Id clientId,
      Id operatorId,
      CommonString orderNumber,
      List<Id> services});
}

/// @nodoc
class _$OrderDtoCopyWithImpl<$Res, $Val extends OrderDto>
    implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? operatorId = null,
    Object? orderNumber = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as Id,
      operatorId: null == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as Id,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as CommonString,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Id>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderDtoCopyWith<$Res> implements $OrderDtoCopyWith<$Res> {
  factory _$$_OrderDtoCopyWith(
          _$_OrderDto value, $Res Function(_$_OrderDto) then) =
      __$$_OrderDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Id clientId,
      Id operatorId,
      CommonString orderNumber,
      List<Id> services});
}

/// @nodoc
class __$$_OrderDtoCopyWithImpl<$Res>
    extends _$OrderDtoCopyWithImpl<$Res, _$_OrderDto>
    implements _$$_OrderDtoCopyWith<$Res> {
  __$$_OrderDtoCopyWithImpl(
      _$_OrderDto _value, $Res Function(_$_OrderDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? operatorId = null,
    Object? orderNumber = null,
    Object? services = null,
  }) {
    return _then(_$_OrderDto(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as Id,
      operatorId: null == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as Id,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as CommonString,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Id>,
    ));
  }
}

/// @nodoc

class _$_OrderDto extends _OrderDto {
  const _$_OrderDto(
      {required this.clientId,
      required this.operatorId,
      required this.orderNumber,
      required final List<Id> services})
      : _services = services,
        super._();

  @override
  final Id clientId;
  @override
  final Id operatorId;
  @override
  final CommonString orderNumber;
  final List<Id> _services;
  @override
  List<Id> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'OrderDto(clientId: $clientId, operatorId: $operatorId, orderNumber: $orderNumber, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDto &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.operatorId, operatorId) ||
                other.operatorId == operatorId) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId, operatorId,
      orderNumber, const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDtoCopyWith<_$_OrderDto> get copyWith =>
      __$$_OrderDtoCopyWithImpl<_$_OrderDto>(this, _$identity);
}

abstract class _OrderDto extends OrderDto {
  const factory _OrderDto(
      {required final Id clientId,
      required final Id operatorId,
      required final CommonString orderNumber,
      required final List<Id> services}) = _$_OrderDto;
  const _OrderDto._() : super._();

  @override
  Id get clientId;
  @override
  Id get operatorId;
  @override
  CommonString get orderNumber;
  @override
  List<Id> get services;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDtoCopyWith<_$_OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}
