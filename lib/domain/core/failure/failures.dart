import 'package:abctechfront/domain/core/entity/api_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure(List<ApiError> errors) = _Failure;

  factory Failure.serverError({
    List<ApiError>? errors,
  }) =>
      Failure(errors ?? List.filled(1, ApiError.somethingWrong()));
}
