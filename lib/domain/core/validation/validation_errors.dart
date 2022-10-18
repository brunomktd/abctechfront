import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_errors.freezed.dart';

@freezed
class ValidationError<T> with _$ValidationError<T> {
  const factory ValidationError.listTooLong({
    required T failedValue,
    required int max,
  }) = ListTooLong<T>;
  const factory ValidationError.zeroValue({
    required num failedValue,
  }) = ZeroValue<T>;
  const factory ValidationError.emptyList({
    required T failedValue,
  }) = EmptyList<T>;
}
