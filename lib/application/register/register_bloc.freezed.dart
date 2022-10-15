// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAssistances,
    required TResult Function() saveOrder,
    required TResult Function(List<int> ids) assistancesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAssistances,
    TResult? Function()? saveOrder,
    TResult? Function(List<int> ids)? assistancesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAssistances,
    TResult Function()? saveOrder,
    TResult Function(List<int> ids)? assistancesChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAssistances value) loadAssistances,
    required TResult Function(SaveOrder value) saveOrder,
    required TResult Function(AssistancesChanged value) assistancesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAssistances value)? loadAssistances,
    TResult? Function(SaveOrder value)? saveOrder,
    TResult? Function(AssistancesChanged value)? assistancesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAssistances value)? loadAssistances,
    TResult Function(SaveOrder value)? saveOrder,
    TResult Function(AssistancesChanged value)? assistancesChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadAssistancesCopyWith<$Res> {
  factory _$$LoadAssistancesCopyWith(
          _$LoadAssistances value, $Res Function(_$LoadAssistances) then) =
      __$$LoadAssistancesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAssistancesCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$LoadAssistances>
    implements _$$LoadAssistancesCopyWith<$Res> {
  __$$LoadAssistancesCopyWithImpl(
      _$LoadAssistances _value, $Res Function(_$LoadAssistances) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadAssistances implements LoadAssistances {
  const _$LoadAssistances();

  @override
  String toString() {
    return 'RegisterEvent.loadAssistances()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAssistances);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAssistances,
    required TResult Function() saveOrder,
    required TResult Function(List<int> ids) assistancesChanged,
  }) {
    return loadAssistances();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAssistances,
    TResult? Function()? saveOrder,
    TResult? Function(List<int> ids)? assistancesChanged,
  }) {
    return loadAssistances?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAssistances,
    TResult Function()? saveOrder,
    TResult Function(List<int> ids)? assistancesChanged,
    required TResult orElse(),
  }) {
    if (loadAssistances != null) {
      return loadAssistances();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAssistances value) loadAssistances,
    required TResult Function(SaveOrder value) saveOrder,
    required TResult Function(AssistancesChanged value) assistancesChanged,
  }) {
    return loadAssistances(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAssistances value)? loadAssistances,
    TResult? Function(SaveOrder value)? saveOrder,
    TResult? Function(AssistancesChanged value)? assistancesChanged,
  }) {
    return loadAssistances?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAssistances value)? loadAssistances,
    TResult Function(SaveOrder value)? saveOrder,
    TResult Function(AssistancesChanged value)? assistancesChanged,
    required TResult orElse(),
  }) {
    if (loadAssistances != null) {
      return loadAssistances(this);
    }
    return orElse();
  }
}

abstract class LoadAssistances implements RegisterEvent {
  const factory LoadAssistances() = _$LoadAssistances;
}

/// @nodoc
abstract class _$$SaveOrderCopyWith<$Res> {
  factory _$$SaveOrderCopyWith(
          _$SaveOrder value, $Res Function(_$SaveOrder) then) =
      __$$SaveOrderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveOrderCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$SaveOrder>
    implements _$$SaveOrderCopyWith<$Res> {
  __$$SaveOrderCopyWithImpl(
      _$SaveOrder _value, $Res Function(_$SaveOrder) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveOrder implements SaveOrder {
  const _$SaveOrder();

  @override
  String toString() {
    return 'RegisterEvent.saveOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAssistances,
    required TResult Function() saveOrder,
    required TResult Function(List<int> ids) assistancesChanged,
  }) {
    return saveOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAssistances,
    TResult? Function()? saveOrder,
    TResult? Function(List<int> ids)? assistancesChanged,
  }) {
    return saveOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAssistances,
    TResult Function()? saveOrder,
    TResult Function(List<int> ids)? assistancesChanged,
    required TResult orElse(),
  }) {
    if (saveOrder != null) {
      return saveOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAssistances value) loadAssistances,
    required TResult Function(SaveOrder value) saveOrder,
    required TResult Function(AssistancesChanged value) assistancesChanged,
  }) {
    return saveOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAssistances value)? loadAssistances,
    TResult? Function(SaveOrder value)? saveOrder,
    TResult? Function(AssistancesChanged value)? assistancesChanged,
  }) {
    return saveOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAssistances value)? loadAssistances,
    TResult Function(SaveOrder value)? saveOrder,
    TResult Function(AssistancesChanged value)? assistancesChanged,
    required TResult orElse(),
  }) {
    if (saveOrder != null) {
      return saveOrder(this);
    }
    return orElse();
  }
}

abstract class SaveOrder implements RegisterEvent {
  const factory SaveOrder() = _$SaveOrder;
}

/// @nodoc
abstract class _$$AssistancesChangedCopyWith<$Res> {
  factory _$$AssistancesChangedCopyWith(_$AssistancesChanged value,
          $Res Function(_$AssistancesChanged) then) =
      __$$AssistancesChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$AssistancesChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$AssistancesChanged>
    implements _$$AssistancesChangedCopyWith<$Res> {
  __$$AssistancesChangedCopyWithImpl(
      _$AssistancesChanged _value, $Res Function(_$AssistancesChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$AssistancesChanged(
      null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$AssistancesChanged implements AssistancesChanged {
  const _$AssistancesChanged(final List<int> ids) : _ids = ids;

  final List<int> _ids;
  @override
  List<int> get ids {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'RegisterEvent.assistancesChanged(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssistancesChanged &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssistancesChangedCopyWith<_$AssistancesChanged> get copyWith =>
      __$$AssistancesChangedCopyWithImpl<_$AssistancesChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAssistances,
    required TResult Function() saveOrder,
    required TResult Function(List<int> ids) assistancesChanged,
  }) {
    return assistancesChanged(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAssistances,
    TResult? Function()? saveOrder,
    TResult? Function(List<int> ids)? assistancesChanged,
  }) {
    return assistancesChanged?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAssistances,
    TResult Function()? saveOrder,
    TResult Function(List<int> ids)? assistancesChanged,
    required TResult orElse(),
  }) {
    if (assistancesChanged != null) {
      return assistancesChanged(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAssistances value) loadAssistances,
    required TResult Function(SaveOrder value) saveOrder,
    required TResult Function(AssistancesChanged value) assistancesChanged,
  }) {
    return assistancesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAssistances value)? loadAssistances,
    TResult? Function(SaveOrder value)? saveOrder,
    TResult? Function(AssistancesChanged value)? assistancesChanged,
  }) {
    return assistancesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAssistances value)? loadAssistances,
    TResult Function(SaveOrder value)? saveOrder,
    TResult Function(AssistancesChanged value)? assistancesChanged,
    required TResult orElse(),
  }) {
    if (assistancesChanged != null) {
      return assistancesChanged(this);
    }
    return orElse();
  }
}

abstract class AssistancesChanged implements RegisterEvent {
  const factory AssistancesChanged(final List<int> ids) = _$AssistancesChanged;

  List<int> get ids;
  @JsonKey(ignore: true)
  _$$AssistancesChangedCopyWith<_$AssistancesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  OrderDto get form => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Option<Either<Failure, List<AssistanceCombo>>> get assistancesOption =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get saveOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {OrderDto form,
      bool isLoading,
      bool isSaving,
      bool showErrors,
      Option<Either<Failure, List<AssistanceCombo>>> assistancesOption,
      Option<Either<Failure, Unit>> saveOption});

  $OrderDtoCopyWith<$Res> get form;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
    Object? isLoading = null,
    Object? isSaving = null,
    Object? showErrors = null,
    Object? assistancesOption = null,
    Object? saveOption = null,
  }) {
    return _then(_value.copyWith(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as OrderDto,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: null == showErrors
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      assistancesOption: null == assistancesOption
          ? _value.assistancesOption
          : assistancesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<AssistanceCombo>>>,
      saveOption: null == saveOption
          ? _value.saveOption
          : saveOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDtoCopyWith<$Res> get form {
    return $OrderDtoCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OrderDto form,
      bool isLoading,
      bool isSaving,
      bool showErrors,
      Option<Either<Failure, List<AssistanceCombo>>> assistancesOption,
      Option<Either<Failure, Unit>> saveOption});

  @override
  $OrderDtoCopyWith<$Res> get form;
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
    Object? isLoading = null,
    Object? isSaving = null,
    Object? showErrors = null,
    Object? assistancesOption = null,
    Object? saveOption = null,
  }) {
    return _then(_$_RegisterState(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as OrderDto,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: null == showErrors
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      assistancesOption: null == assistancesOption
          ? _value.assistancesOption
          : assistancesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<AssistanceCombo>>>,
      saveOption: null == saveOption
          ? _value.saveOption
          : saveOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {required this.form,
      required this.isLoading,
      required this.isSaving,
      required this.showErrors,
      required this.assistancesOption,
      required this.saveOption});

  @override
  final OrderDto form;
  @override
  final bool isLoading;
  @override
  final bool isSaving;
  @override
  final bool showErrors;
  @override
  final Option<Either<Failure, List<AssistanceCombo>>> assistancesOption;
  @override
  final Option<Either<Failure, Unit>> saveOption;

  @override
  String toString() {
    return 'RegisterState(form: $form, isLoading: $isLoading, isSaving: $isSaving, showErrors: $showErrors, assistancesOption: $assistancesOption, saveOption: $saveOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.assistancesOption, assistancesOption) ||
                other.assistancesOption == assistancesOption) &&
            (identical(other.saveOption, saveOption) ||
                other.saveOption == saveOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form, isLoading, isSaving,
      showErrors, assistancesOption, saveOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
          {required final OrderDto form,
          required final bool isLoading,
          required final bool isSaving,
          required final bool showErrors,
          required final Option<Either<Failure, List<AssistanceCombo>>>
              assistancesOption,
          required final Option<Either<Failure, Unit>> saveOption}) =
      _$_RegisterState;

  @override
  OrderDto get form;
  @override
  bool get isLoading;
  @override
  bool get isSaving;
  @override
  bool get showErrors;
  @override
  Option<Either<Failure, List<AssistanceCombo>>> get assistancesOption;
  @override
  Option<Either<Failure, Unit>> get saveOption;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
