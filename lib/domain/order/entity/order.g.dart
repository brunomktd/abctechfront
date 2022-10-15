// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      createdAt: DateTime.parse(json['createdAt'] as String),
      operatorId: json['operatorId'] as int,
      orderId: json['orderId'] as int,
      services: (json['services'] as List<dynamic>)
          .map((e) => AssistanceCombo.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      start: json['start'] == null
          ? null
          : Location.fromJson(json['start'] as Map<String, dynamic>),
      end: json['end'] == null
          ? null
          : Location.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'operatorId': instance.operatorId,
      'orderId': instance.orderId,
      'services': instance.services,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'start': instance.start,
      'end': instance.end,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.PENDENTE: 'PENDENTE',
  OrderStatus.ANDAMENTO: 'ANDAMENTO',
  OrderStatus.CONCLUIDO: 'CONCLUIDO',
  OrderStatus.CANCELADO: 'CANCELADO',
};
