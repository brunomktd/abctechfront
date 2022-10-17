import 'package:abctechfront/domain/assistance/entity/assistance_combo.dart';
import 'package:abctechfront/domain/client/entity/client.dart';
import 'package:abctechfront/domain/core/enums/order_status_enum.dart';
import 'package:abctechfront/domain/order/entity/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
    required DateTime createdAt,
    required int operatorId,
    required int orderId,
    required Client client,
    required List<AssistanceCombo> services,
    required OrderStatus status,
    Location? start,
    Location? end,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
