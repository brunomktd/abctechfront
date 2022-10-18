import 'dart:core';

import 'package:dartz/dartz.dart' hide id;

extension OptionEitherX<E, T> on Option<Either<E, T>> {
  T getOrDflt(T dflt) => fold(() => dflt, (a) => a.fold((l) => dflt, (r) => r));
  void foldError(void Function(E err) handler) =>
      fold(() {}, (a) => a.fold((l) => handler(l), (r) {}));
  void foldResponse(
    void Function(T success) onSuccess,
    void Function(E failure) onFailure,
  ) =>
      fold(() {}, (a) => a.fold((l) => onFailure(l), (r) => onSuccess(r)));
}

extension StringX on String {
  String capitalize() => '${this[0].toUpperCase()}${substring(1).toLowerCase()}';

  String dfltIfEmpty(String dflt) => this == '' ? dflt : this;

  // ignore: avoid_positional_boolean_parameters
  String getOrEmpty(bool condition) => condition ? this : '';

  String padLeftWithLeading(String leading, int width, String char) =>
      '$leading' '${padLeft(width, char)}';
}
