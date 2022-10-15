import 'package:abctechfront/domain/core/validation/validation_errors.dart';

class UnexpectedValueError extends Error {
  final ValidationError valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

class UnableToParseValueError extends Error {
  final dynamic valueFailure;

  UnableToParseValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'unable to parse value. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
