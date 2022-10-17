import 'package:abctechfront/domain/core/enums/order_status_enum.dart';
import 'package:abctechfront/domain/core/failure/failures.dart';
import 'package:abctechfront/domain/order/dto/order_dto.dart';
import 'package:abctechfront/domain/order/entity/location.dart';
import 'package:abctechfront/domain/order/entity/order.dart';
import 'package:abctechfront/domain/order/interface/i_order_facade.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOrderFacade)
class OrderFacade implements IOrderFacade {
  final Dio _http;

  const OrderFacade(this._http);

  @override
  Future<Either<Failure, List<Order>>> fetchAll({
    required int operatorId,
    required OrderStatus status,
  }) async {
    try {
      final response = await _http.get<List>(
        '/orders',
        queryParameters: {
          "operatorId": operatorId > 0 ? operatorId : null,
          "status": status.value < 4 ? status.value : null,
        },
      );
      final orders = response.data!.map((o) => Order.fromJson(o as Map<String, dynamic>)).toList();

      return right(orders);
    } catch (e) {
      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> create({required OrderDto form}) async {
    try {
      await _http.post(
        '/orders',
        data: form.toMap(),
      );

      return right(unit);
    } catch (e) {
      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> update({
    required int orderId,
    required OrderStatus status,
    required Location location,
  }) async {
    try {
      await _http.put(
        '/orders/$orderId',
        data: location.toMap(),
        queryParameters: {
          "status": status.value,
        },
      );

      return right(unit);
    } catch (e) {
      return left(Failure.serverError());
    }
  }
}
