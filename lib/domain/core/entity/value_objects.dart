// ignore_for_file: avoid_positional_boolean_parameters

import 'package:abctechfront/domain/core/extensions/x_dartz.dart';
import 'package:abctechfront/domain/core/failure/errors.dart';
import 'package:abctechfront/domain/core/validation/validation_errors.dart';
import 'package:abctechfront/domain/core/validation/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValidationError<T?>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  T? getNullable() {
    return value.fold((l) => null, (r) => r);
  }

  Either<ValidationError<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  Either<ValidationError<dynamic>, Unit> get nullableFailureOrUnit {
    return value.fold(
      (l) => value.getNullable() == null ? right(unit) : left(l),
      (r) => right(unit),
    );
  }

  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class CommonNumber extends ValueObject<num?> {
  @override
  final Either<ValidationError<num?>, num?> value;

  factory CommonNumber([num? input]) {
    return CommonNumber._(
      isNull<num?>(input),
    );
  }

  bool isPositive() {
    return value.getDfltOrMap(false, (v) => v != null && v > 0);
  }

  const CommonNumber._(this.value);
}

class Id extends ValueObject<int?> {
  @override
  final Either<ValidationError<int?>, int?> value;

  factory Id([int? input]) {
    return Id._(
      isNull<int?>(input),
    );
  }

  bool isPositive() {
    return value.getDfltOrMap(false, (v) => v != null && v > 0);
  }

  const Id._(this.value);
}

class CommonString extends ValueObject<String> {
  @override
  final Either<ValidationError<String?>, String> value;

  factory CommonString([
    String? input,
    num? maxLength,
    num? minLength,
  ]) {
    return CommonString._(
      validateCommonString(input, maxLength, minLength),
    );
  }

  const CommonString._(this.value);
}

class PositiveNumber extends ValueObject<num> {
  @override
  final Either<ValidationError<num?>, num> value;

  factory PositiveNumber([num? input]) {
    return PositiveNumber._(
      validatePositiveNumber(input),
    );
  }

  const PositiveNumber._(this.value);
}

class Url extends ValueObject<String> {
  @override
  final Either<ValidationError<String?>, String> value;

  factory Url([String? input]) {
    return Url._(isNull(input));
  }

  const Url._(this.value);
}

class Cellphone extends ValueObject<String> {
  @override
  final Either<ValidationError<String?>, String> value;

  factory Cellphone([String? input]) {
    return Cellphone._(
      validatePhone(input),
    );
  }

  const Cellphone._(this.value);
}

class Email extends ValueObject<String?> {
  @override
  final Either<ValidationError<String?>, String?> value;

  factory Email([String? input]) {
    return Email._(validateEmail(input, skipNullValidation: true));
  }

  const Email._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValidationError<String?>, String> value;

  factory Password([String? input]) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class PasswordConfirmation extends ValueObject<String> {
  @override
  final Either<ValidationError<String?>, String> value;

  factory PasswordConfirmation([String? input]) {
    return PasswordConfirmation._(
      validatePassword(input),
    );
  }

  const PasswordConfirmation._(this.value);
}

class Version extends ValueObject<int> {
  @override
  final Either<ValidationError<int?>, int> value;

  factory Version(int? input) {
    return Version._(
      isNull(input),
    );
  }

  const Version._(this.value);
}

class CommonBool extends ValueObject<bool> {
  @override
  final Either<ValidationError<bool>, bool> value;

  factory CommonBool(bool input) {
    return CommonBool._(
      right(input),
    );
  }

  const CommonBool._(this.value);
}

class StringDate extends ValueObject<String> {
  @override
  final Either<ValidationError<String?>, String> value;

  factory StringDate([String? input]) {
    return StringDate._(validateDate(input));
  }

  String getIsoDateOrCrash() {
    return value.fold(
      (f) => throw UnexpectedValueError(f),
      (r) => DateTime.parse(r.split('/').reversed.join()).toIso8601String(),
    );
  }

  const StringDate._(this.value);
}

class Year extends ValueObject<int> {
  @override
  final Either<ValidationError<int?>, int> value;

  factory Year([int? input]) {
    return Year._(validateYear(input));
  }

  const Year._(this.value);
}

class Month extends ValueObject<int> {
  @override
  final Either<ValidationError<int?>, int> value;

  factory Month([int? input]) {
    return Month._(validateMonth(input));
  }

  const Month._(this.value);
}

class Currency extends ValueObject<double> {
  @override
  final Either<ValidationError<double?>, double> value;

  factory Currency([double? input]) {
    return Currency._(validateCurrency(input));
  }

  const Currency._(this.value);
}

class Decimal extends ValueObject<double> {
  @override
  final Either<ValidationError<double?>, double> value;

  factory Decimal([double? input]) {
    return Decimal._(validateDecimal(input));
  }

  const Decimal._(this.value);
}

class CommonDate extends ValueObject<DateTime> {
  @override
  final Either<ValidationError<DateTime?>, DateTime> value;

  factory CommonDate([DateTime? input]) {
    return CommonDate._(isNull(input));
  }

  const CommonDate._(this.value);
}
