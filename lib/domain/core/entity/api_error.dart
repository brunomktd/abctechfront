import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String code,
    required String message,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) => _$ApiErrorFromJson(json);

  factory ApiError.somethingWrong() => const ApiError(
        code: '500',
        message: 'Ops, algo deu errado.',
      );
}
