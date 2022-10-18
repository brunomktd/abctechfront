import 'package:abctechfront/domain/assistance/entity/assistance_combo.dart';
import 'package:abctechfront/domain/client/entity/client.dart';
import 'package:abctechfront/domain/core/validation/validation_errors.dart';
import 'package:abctechfront/domain/operator/entity/operator.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_dto.freezed.dart';

@freezed
class OrderDto with _$OrderDto {
  const OrderDto._();

  const factory OrderDto({
    required Client client,
    required Operator serviceOperator,
    required List<AssistanceCombo> services,
  }) = _OrderDto;

  factory OrderDto.empty() => OrderDto(
        client: Client.empty(),
        serviceOperator: Operator.empty(),
        services: List.empty(),
      );

  Map<String, dynamic> toMap() => {
        "clientId": client.id,
        "operatorId": serviceOperator.operatorId,
        "services": services.map((e) => e.id).toList()
      };
}

extension OrderDtoX on OrderDto {
  Option<ValidationError<dynamic>> get failureOption {
    return client.failureOrUnit
        .andThen(serviceOperator.failureOrUnit)
        .andThen(
          services.isNotEmpty
              ? right(unit)
              : left(ValidationError.emptyList(failedValue: services)),
        )
        .andThen(
          services.length <= 15
              ? right(unit)
              : left(ValidationError.listTooLong(failedValue: services, max: 15)),
        )
        .fold((l) => some(l), (r) => none());
  }
}
