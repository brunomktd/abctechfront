import 'package:abctechfront/domain/core/enums/order_status_enum.dart';
import 'package:abctechfront/domain/core/failure/failures.dart';
import 'package:abctechfront/domain/order/dto/order_dto.dart';
import 'package:abctechfront/domain/order/entity/location.dart';
import 'package:abctechfront/domain/order/entity/order.dart';
import 'package:dartz/dartz.dart' hide Order;

abstract class IOrderFacade {
  Future<Either<Failure, List<Order>>> fetchAll({
    required int operatorId,
    required OrderStatus status,
  });

  Future<Either<Failure, Unit>> create({
    required OrderDto form,
  });

  Future<Either<Failure, Unit>> update({
    required int orderId,
    required OrderStatus status,
    required Location location,
  });
}
