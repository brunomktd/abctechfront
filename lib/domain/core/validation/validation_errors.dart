import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_errors.freezed.dart';

@freezed
class ValidationError<T> with _$ValidationError<T> {
  const factory ValidationError.nullValue({
    required T failedValue,
  }) = NullValue<T>;
  const factory ValidationError.negativeNumber({
    required T failedValue,
  }) = NegativeNumber<T>;
  const factory ValidationError.exceedingLength({
    required T failedValue,
    required num max,
  }) = ExceedingLength<T>;
  const factory ValidationError.shortLength({
    required T failedValue,
    required num min,
  }) = ShortLength<T>;
  const factory ValidationError.empty({
    required T failedValue,
  }) = Empty<T>;
  const factory ValidationError.multiline({
    required T failedValue,
  }) = Multiline<T>;
  const factory ValidationError.numberTooLarge({
    required T failedValue,
    required num max,
  }) = NumberTooLarge<T>;
  const factory ValidationError.listTooLong({
    required T failedValue,
    required int max,
  }) = ListTooLong<T>;
  const factory ValidationError.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValidationError.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValidationError.invalidPhotoUrl({
    required T failedValue,
  }) = InvalidPhotoUrl<T>;
  const factory ValidationError.invalidPassword({
    required String failedValue,
  }) = InvalidPassword<T>;
  const factory ValidationError.emptyValue({
    required String failedValue,
  }) = EmptyValue<T>;
  const factory ValidationError.invalidPhone({
    required String failedValue,
  }) = InvalidPhone<T>;
  const factory ValidationError.zeroValue({
    required num failedValue,
  }) = ZeroValue<T>;
  const factory ValidationError.invalidDate({
    required String failedValue,
  }) = InvalidDate<T>;
  const factory ValidationError.emptyList({
    required T failedValue,
  }) = EmptyList<T>;
  const factory ValidationError.invalidList({
    required T failedValue,
  }) = InvalidList<T>;
  const factory ValidationError.invalidYear({
    required T failedValue,
  }) = InvalidYear<T>;
  const factory ValidationError.invalidMonth({
    required T failedValue,
  }) = InvalidMonth<T>;
  const factory ValidationError.notTrueBool({
    required T failedValue,
  }) = NotTrueBool<T>;
}
