// ignore_for_file: avoid_positional_boolean_parameters

import 'package:abctechfront/domain/core/validation/validation_errors.dart';
import 'package:dartz/dartz.dart';

Either<ValidationError<T?>, T> isNull<T>(T? input) {
  if (input != null) {
    return right(input);
  } else {
    return left(ValidationError.nullValue(failedValue: input));
  }
}

Either<ValidationError<bool?>, bool> isTrue<T>(bool? input) {
  if (input != null && input) {
    return right(input);
  } else {
    return left(ValidationError.notTrueBool(failedValue: input));
  }
}

Either<ValidationError<String?>, String?> validateEmail(
  String? input, {
  bool skipNullValidation = false,
}) {
  if (skipNullValidation && input == null) {
    return right(null);
  }
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  return isNull(input).fold(
    (l) => left(l),
    (r) => RegExp(emailRegex).hasMatch(input!)
        ? right(input)
        : left(ValidationError.invalidEmail(failedValue: input)),
  );
}

Either<ValidationError<String?>, String> validatePassword(String? input) {
  return isNull(input).fold(
    (l) => left(l),
    (r) => input!.length >= 6
        ? right(input)
        : left(ValidationError.invalidPassword(failedValue: input)),
  );
}

Either<ValidationError<String?>, String> isEmpty(String input) {
  if (input.isEmpty) {
    return left(ValidationError.emptyValue(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValidationError<num?>, num> isNegative(num number) {
  if (number.isNegative) {
    return left(ValidationError.negativeNumber(failedValue: number));
  } else {
    return right(number);
  }
}

Either<ValidationError<num?>, num> isZero(num number) {
  if (number == 0) {
    return left(ValidationError.zeroValue(failedValue: number));
  } else {
    return right(number);
  }
}

Either<ValidationError<String?>, String> validatePhone(String? input) {
  return isNull(input).fold(
    (l) => left(l),
    (r) =>
        input!.length < 15 ? left(ValidationError.invalidPhone(failedValue: input)) : right(input),
  );
}

Either<ValidationError<String?>, String> validateDate(String? input) {
  return isNull(input).fold(
    (l) => left(l),
    (r) => DateTime.tryParse(input!.split('/').reversed.join()) == null
        ? left(ValidationError.invalidDate(failedValue: input))
        : right(input),
  );
}

Either<ValidationError<String?>, String> validateMaxStringLength(
  String input,
  num maxLength,
) {
  if (maxLength == 0 || input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValidationError.exceedingLength(
        failedValue: input,
        max: maxLength,
      ),
    );
  }
}

Either<ValidationError<String?>, String> validateMinStringLength(
  String input,
  num minLength,
) {
  if (minLength == 0 || input.length >= minLength) {
    return right(input);
  } else {
    return left(
      ValidationError.exceedingLength(
        failedValue: input,
        max: minLength,
      ),
    );
  }
}

Either<ValidationError<T?>, T> validateListNotEmpty<T extends List>(
  T input,
) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValidationError.emptyList(failedValue: input));
  }
}

Either<ValidationError<int?>, int> validateYear(int? input) {
  if (input == null) {
    return left(ValidationError.nullValue(failedValue: input));
  } else if (input > 1000 && input <= 9999) {
    return right(input);
  } else {
    return left(ValidationError.invalidYear(failedValue: input));
  }
}

Either<ValidationError<int?>, int> validateMonth(int? input) {
  if (input == null) {
    return left(ValidationError.nullValue(failedValue: input));
  } else if (input > 0 && input <= 11) {
    return right(input);
  } else {
    return left(ValidationError.invalidMonth(failedValue: input));
  }
}

Either<ValidationError<String?>, String> validateCommonString(
  String? input,
  num? maxLength,
  num? minLength,
) {
  return isNull(input).fold(
    (l) => left(l),
    (r) => isEmpty(input!)
        .andThen(validateMaxStringLength(input, maxLength ?? 0))
        .andThen(validateMinStringLength(input, minLength ?? 0)),
  );
}

Either<ValidationError<num?>, num> validatePositiveNumber(
  num? input,
) {
  return isNull(input).fold(
    (l) => left(l),
    (r) => isNegative(input!).andThen(isZero(input)),
  );
}

Either<ValidationError<double?>, double> validateCurrency(
  double? input,
) {
  return isNull(input);
}

Either<ValidationError<double?>, double> validateDecimal(
  double? input,
) {
  return isNull(input);
}
