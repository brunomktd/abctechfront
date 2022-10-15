part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState({
    required bool isLoading,
    required OrderStatus status,
    required Option<Either<Failure, List<Order>>> orders,
  }) = _OrderState;

  factory OrderState.initial() => OrderState(
        isLoading: true,
        status: OrderStatus.ANDAMENTO,
        orders: none(),
      );
}
