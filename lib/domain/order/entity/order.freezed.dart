// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get operatorId => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  List<AssistanceCombo> get services => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  Location? get start => throw _privateConstructorUsedError;
  Location? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {DateTime createdAt,
      int operatorId,
      int orderId,
      List<AssistanceCombo> services,
      OrderStatus status,
      Location? start,
      Location? end});

  $LocationCopyWith<$Res>? get start;
  $LocationCopyWith<$Res>? get end;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? operatorId = null,
    Object? orderId = null,
    Object? services = null,
    Object? status = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      operatorId: null == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<AssistanceCombo>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Location?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as Location?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get start {
    if (_value.start == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.start!, (value) {
      return _then(_value.copyWith(start: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get end {
    if (_value.end == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.end!, (value) {
      return _then(_value.copyWith(end: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime createdAt,
      int operatorId,
      int orderId,
      List<AssistanceCombo> services,
      OrderStatus status,
      Location? start,
      Location? end});

  @override
  $LocationCopyWith<$Res>? get start;
  @override
  $LocationCopyWith<$Res>? get end;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? operatorId = null,
    Object? orderId = null,
    Object? services = null,
    Object? status = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_Order(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      operatorId: null == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<AssistanceCombo>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Location?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  const _$_Order(
      {required this.createdAt,
      required this.operatorId,
      required this.orderId,
      required final List<AssistanceCombo> services,
      required this.status,
      this.start,
      this.end})
      : _services = services;

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final int operatorId;
  @override
  final int orderId;
  final List<AssistanceCombo> _services;
  @override
  List<AssistanceCombo> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  final OrderStatus status;
  @override
  final Location? start;
  @override
  final Location? end;

  @override
  String toString() {
    return 'Order(createdAt: $createdAt, operatorId: $operatorId, orderId: $orderId, services: $services, status: $status, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.operatorId, operatorId) ||
                other.operatorId == operatorId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, operatorId, orderId,
      const DeepCollectionEquality().hash(_services), status, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {required final DateTime createdAt,
      required final int operatorId,
      required final int orderId,
      required final List<AssistanceCombo> services,
      required final OrderStatus status,
      final Location? start,
      final Location? end}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  DateTime get createdAt;
  @override
  int get operatorId;
  @override
  int get orderId;
  @override
  List<AssistanceCombo> get services;
  @override
  OrderStatus get status;
  @override
  Location? get start;
  @override
  Location? get end;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
