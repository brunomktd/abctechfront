import 'package:abctechfront/domain/core/enums/order_status_enum.dart';
import 'package:abctechfront/domain/core/failure/failures.dart';
import 'package:abctechfront/domain/order/entity/location.dart';
import 'package:abctechfront/domain/order/entity/order.dart';
import 'package:abctechfront/domain/order/interface/i_order_facade.dart';
import 'package:abctechfront/infraestructure/core/geolocation/geolocation_facade.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final IOrderFacade _orderFacade;
  final IGeolocationFacade _geolocationFacade;

  OrderBloc(this._orderFacade, this._geolocationFacade) : super(OrderState.initial()) {
    on<OrderEvent>(
      (event, emit) async {
        await event.map(
          initGeolocation: (e) async {
            await _geolocationFacade.start();
          },
          loadOrders: (e) async {
            emit(state.copyWith(isLoading: true));

            final orders = await _orderFacade.fetchAll(
              operatorId: 1,
              status: state.status,
            );

            emit(
              state.copyWith(
                isLoading: false,
                orders: some(orders),
              ),
            );
          },
          statusChanged: (StatusChanged status) async {},
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
