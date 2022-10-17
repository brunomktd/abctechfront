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
  Client get client => throw _privateConstructorUsedError;
  Operator get serviceOperator => throw _privateConstructorUsedError;
  List<AssistanceCombo> get services => throw _privateConstructorUsedError;

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
      {Client client,
      Operator serviceOperator,
      List<AssistanceCombo> services});

  $ClientCopyWith<$Res> get client;
  $OperatorCopyWith<$Res> get serviceOperator;
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
    Object? client = null,
    Object? serviceOperator = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      serviceOperator: null == serviceOperator
          ? _value.serviceOperator
          : serviceOperator // ignore: cast_nullable_to_non_nullable
              as Operator,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<AssistanceCombo>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OperatorCopyWith<$Res> get serviceOperator {
    return $OperatorCopyWith<$Res>(_value.serviceOperator, (value) {
      return _then(_value.copyWith(serviceOperator: value) as $Val);
    });
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
      {Client client,
      Operator serviceOperator,
      List<AssistanceCombo> services});

  @override
  $ClientCopyWith<$Res> get client;
  @override
  $OperatorCopyWith<$Res> get serviceOperator;
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
    Object? client = null,
    Object? serviceOperator = null,
    Object? services = null,
  }) {
    return _then(_$_OrderDto(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      serviceOperator: null == serviceOperator
          ? _value.serviceOperator
          : serviceOperator // ignore: cast_nullable_to_non_nullable
              as Operator,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<AssistanceCombo>,
    ));
  }
}

/// @nodoc

class _$_OrderDto extends _OrderDto {
  const _$_OrderDto(
      {required this.client,
      required this.serviceOperator,
      required final List<AssistanceCombo> services})
      : _services = services,
        super._();

  @override
  final Client client;
  @override
  final Operator serviceOperator;
  final List<AssistanceCombo> _services;
  @override
  List<AssistanceCombo> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'OrderDto(client: $client, serviceOperator: $serviceOperator, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDto &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.serviceOperator, serviceOperator) ||
                other.serviceOperator == serviceOperator) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client, serviceOperator,
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDtoCopyWith<_$_OrderDto> get copyWith =>
      __$$_OrderDtoCopyWithImpl<_$_OrderDto>(this, _$identity);
}

abstract class _OrderDto extends OrderDto {
  const factory _OrderDto(
      {required final Client client,
      required final Operator serviceOperator,
      required final List<AssistanceCombo> services}) = _$_OrderDto;
  const _OrderDto._() : super._();

  @override
  Client get client;
  @override
  Operator get serviceOperator;
  @override
  List<AssistanceCombo> get services;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDtoCopyWith<_$_OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}
