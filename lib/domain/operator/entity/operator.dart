import 'package:abctechfront/domain/core/validation/validation_errors.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operator.freezed.dart';
part 'operator.g.dart';

@freezed
class Operator with _$Operator {
  const factory Operator({
    required int operatorId,
    required String name,
  }) = _Operator;

  factory Operator.empty() => const Operator(operatorId: 0, name: '');

  factory Operator.fromJson(Map<String, dynamic> json) => _$OperatorFromJson(json);
}

extension OperatorX on Operator {
  Either<ValidationError<dynamic>, Unit> get failureOrUnit {
    return operatorId > 0 ? right(unit) : left(ValidationError.zeroValue(failedValue: operatorId));
  }
}
