import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String code,
    required String message,
    required String type,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);

  factory ApiError.somethingWrong() => ApiError(
        code: '500',
        message: 'Ops, algo deu errado.',
        type: ApiErrorType.error.name,
      );
  factory ApiError.connectivity() => ApiError(
        code: '999',
        message: 'Ops, estou sem conexão.',
        type: ApiErrorType.error.name,
      );
  factory ApiError.unableToSync(String entity) => ApiError(
        code: '1001',
        message: 'Não foi possível sincronizar $entity',
        type: ApiErrorType.error.name,
      );
  factory ApiError.animalOutOfSync(String? name) => ApiError(
        code: '1002',
        message:
            '${name ?? "Esse animal"} ainda não foi sincronizado com o servidor.',
        type: ApiErrorType.error.name,
      );
}

enum ApiErrorType { info, warning, error, silent }

extension ApiErrorTypeX on ApiErrorType {
  String get name {
    switch (this) {
      case ApiErrorType.info:
        return 'INFO';
      case ApiErrorType.warning:
        return 'WARNING';
      case ApiErrorType.error:
        return 'ERROR';
      default:
        return 'SILENT';
    }
  }
}
