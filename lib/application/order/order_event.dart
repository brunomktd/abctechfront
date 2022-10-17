part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.initGeolocation() = InitGeolocation;
  const factory OrderEvent.loadOrders() = LoadOrders;
  const factory OrderEvent.statusChanged(OrderStatus status) = StatusChanged;
  const factory OrderEvent.operatorChanged(Operator serviceOperator) = OperatorChanged;
  const factory OrderEvent.operatorCleared() = OperatorCleared;
  const factory OrderEvent.startOrder(int orderId) = StartOrder;
  const factory OrderEvent.endOrder(int orderId) = EndOrder;
  const factory OrderEvent.cancelOrder(int orderId) = CancelOrder;
}
