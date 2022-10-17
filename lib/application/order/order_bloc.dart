import 'package:abctechfront/domain/client/entity/client.dart';
import 'package:abctechfront/domain/client/interface/i_client_facade.dart';
import 'package:abctechfront/domain/core/enums/order_status_enum.dart';
import 'package:abctechfront/domain/core/failure/failures.dart';
import 'package:abctechfront/domain/operator/entity/operator.dart';
import 'package:abctechfront/domain/operator/interface/i_operator_facade.dart';
import 'package:abctechfront/domain/order/entity/location.dart';
import 'package:abctechfront/domain/order/entity/order.dart';
import 'package:abctechfront/domain/order/interface/i_order_facade.dart';
import 'package:abctechfront/infraestructure/core/geolocation/geolocation_facade.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final IOrderFacade _orderFacade;
  final IClientFacade _clientFacade;
  final IOperatorFacade _operatorFacade;
  final IGeolocationFacade _geolocationFacade;

  OrderBloc(
    this._orderFacade,
    this._clientFacade,
    this._operatorFacade,
    this._geolocationFacade,
  ) : super(OrderState.initial()) {
    on<OrderEvent>(
      (event, emit) async {
        await event.map(
          initGeolocation: (e) async {
            await _geolocationFacade.start();
          },
          loadOrders: (e) async {
            emit(state.copyWith(isLoading: true));

            final clients = await _clientFacade.fetchAll();

            final operators = await _operatorFacade.fetchAll();

            final orders = await _orderFacade.fetchAll(
              operatorId: state.serviceOperator.operatorId,
              status: state.status,
            );

            emit(
              state.copyWith(
                isLoading: false,
                orders: some(orders),
                clients: some(clients),
                operators: some(operators),
              ),
            );
          },
          statusChanged: (StatusChanged status) async {
            emit(state.copyWith(status: status.status));
            add(const OrderEvent.loadOrders());
          },
          operatorChanged: (OperatorChanged operatorChanged) async {
            emit(state.copyWith(serviceOperator: operatorChanged.serviceOperator));
            add(const OrderEvent.loadOrders());
          },
          operatorCleared: (_) async {
            emit(state.copyWith(serviceOperator: Operator.empty()));
            add(const OrderEvent.loadOrders());
          },
          startOrder: (StartOrder start) async {
            emit(state.copyWith(isLoading: true));

            final location = await _getLocation();
            final update = await _orderFacade.update(
              orderId: start.orderId,
              status: OrderStatus.ANDAMENTO,
              location: location,
            );

            if (update.isRight()) {
              add(const LoadOrders());
            } else {
              emit(state.copyWith(isLoading: false));
            }
          },
          endOrder: (EndOrder end) async {
            emit(state.copyWith(isLoading: true));

            final location = await _getLocation();
            final update = await _orderFacade.update(
              orderId: end.orderId,
              status: OrderStatus.CONCLUIDO,
              location: location,
            );

            if (update.isRight()) {
              add(const LoadOrders());
            } else {
              emit(state.copyWith(isLoading: false));
            }
          },
          cancelOrder: (CancelOrder cancel) async {
            emit(state.copyWith(isLoading: true));

            final location = await _getLocation();
            final update = await _orderFacade.update(
              orderId: cancel.orderId,
              status: OrderStatus.CANCELADO,
              location: location,
            );

            if (update.isRight()) {
              add(const LoadOrders());
            } else {
              emit(state.copyWith(isLoading: false));
            }
          },
        );
      },
    );
  }

  Future<Location> _getLocation() async {
    final position = await _geolocationFacade.getPosition();
    return Location(
      dateTime: DateTime.now(),
      latitude: position.latitude,
      longitude: position.longitude,
    );
  }
}
