part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState({
    required bool isLoading,
    required OrderStatus status,
    required Operator serviceOperator,
    required Option<Either<Failure, List<Order>>> orders,
    required Option<Either<Failure, List<Client>>> clients,
    required Option<Either<Failure, List<Operator>>> operators,
  }) = _OrderState;

  factory OrderState.initial() => OrderState(
        isLoading: true,
        status: OrderStatus.ANDAMENTO,
        serviceOperator: Operator.empty(),
        orders: none(),
        clients: none(),
        operators: none(),
      );
}
