import 'dart:core';

import 'package:dartz/dartz.dart' hide id;
import 'package:flutter/cupertino.dart';

extension OptionEitherX<E, T> on Option<Either<E, T>> {
  T getOrDflt(T dflt) => fold(() => dflt, (a) => a.fold((l) => dflt, (r) => r));
  T? getNullable() => fold(() => null, (a) => a.fold((l) => null, (r) => r));
  D getDfltOrMap<D>(D dflt, D Function(T r) m) =>
      fold(() => dflt, (a) => a.fold((l) => dflt, (r) => m(r)));
  void foldError(void Function(E err) handler) =>
      fold(() {}, (a) => a.fold((l) => handler(l), (r) {}));
  void foldSuccess(void Function(T success) handler) =>
      fold(() {}, (a) => a.fold((l) => l, (r) => handler(r)));
  void foldResponse(
    void Function(T success) onSuccess,
    void Function(E failure) onFailure,
  ) =>
      fold(() {}, (a) => a.fold((l) => onFailure(l), (r) => onSuccess(r)));
  bool isSomeAndRight() => fold(() => false, (a) => a.fold((l) => false, (r) => true));
  Widget getWidget(
    bool Function(T r) condition,
    Widget ifTrue,
    Widget ifFalse,
    Widget dflt,
  ) =>
      fold(
        () => dflt,
        (a) => a.fold((l) => dflt, (r) => condition(r) ? ifTrue : ifFalse),
      );
  D? mapRight<D>(D Function(T r) map) =>
      fold(() => null, (a) => a.fold((l) => null, (r) => map(r)));
}

extension OptionX<T> on Option<T> {
  D getDfltOrMap<D>(D dflt, D Function(T) m) => fold(() => dflt, (r) => m(r));
}

extension EitherX<IFailure, T> on Either<IFailure, T> {
  T? getNullable() => fold((l) => null, (r) => r);
  D? getNullOrMap<D>(D Function(T r) m) => fold((l) => null, (r) => m(r));
  D getDfltOrMap<D>(D dflt, D Function(T r) m) => fold((l) => dflt, (r) => m(r));
  D? foldError<D>(D Function(IFailure err) handler) =>
      fold((IFailure err) => handler(err), (r) => null);
  D? foldSuccess<D>(D Function(T success) handler) => fold((l) => null, (r) => handler(r));
}

extension StringX on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String dfltIfEmpty(String dflt) {
    if (this == '') {
      return dflt;
    }

    return this;
  }

  // ignore: avoid_positional_boolean_parameters
  String getOrEmpty(bool condition) {
    if (condition) {
      return this;
    }

    return '';
  }

  String padLeftWithLeading(String leading, int width, String char) {
    return '$leading' '${padLeft(width, char)}';
  }
}

extension BoolX on bool {
  D fold<D>(D Function() ifTrue, D Function() ifFalse) => this ? ifTrue() : ifFalse();
  D? ifTrue<D>(D Function() handler) => this ? handler() : null;
  D? ifFalse<D>(D Function() handler) => !this ? handler() : null;
}
