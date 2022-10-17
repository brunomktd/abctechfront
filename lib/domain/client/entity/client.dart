import 'package:abctechfront/domain/core/validation/validation_errors.dart';
import 'package:abctechfront/domain/core/validation/value_validators.dart';
import 'package:dartz/dartz.dart' hide id;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.freezed.dart';
part 'client.g.dart';

@freezed
class Client with _$Client {
  const factory Client({
    required int id,
    required String name,
  }) = _Client;

  factory Client.empty() => const Client(id: 0, name: '');

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}

extension ClientX on Client {
  Either<ValidationError<dynamic>, Unit> get failureOrUnit {
    return id > 0 ? right(unit) : left(ValidationError.zeroValue(failedValue: id));
  }
}
