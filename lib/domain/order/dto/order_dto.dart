import 'package:abctechfront/domain/core/entity/value_objects.dart';
import 'package:abctechfront/domain/core/validation/validation_errors.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'order_dto.freezed.dart';

@freezed
class OrderDto with _$OrderDto {
  const OrderDto._();

  const factory OrderDto({
    required Id clientId,
    required Id operatorId,
    required CommonString orderNumber,
    required List<Id> services,
  }) = _OrderDto;

  factory OrderDto.empty() => OrderDto(
        clientId: Id(1),
        operatorId: Id(1),
        orderNumber: CommonString(const Uuid().v4()),
        services: List.empty(),
      );

  Map<String, dynamic> toMap() => {
        "clientId": clientId.getOrCrash(),
        "operatorId": operatorId.getOrCrash(),
        "services": services.map((e) => e.getOrCrash()).toList()
      };
}

extension OrderDtoX on OrderDto {
  Option<ValidationError<dynamic>> get failureOption {
    return clientId.failureOrUnit
        .andThen(operatorId.failureOrUnit)
        .andThen(
          services.isEmpty ? left(ValidationError.emptyList(failedValue: services)) : right(unit),
        )
        .fold((f) => some(f), (_) => none());
  }
}
