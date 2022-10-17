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
    required TResult Function() initScreen,
    required TResult Function() saveOrder,
    required TResult Function(List<AssistanceCombo> assistances)
        assistancesChanged,
    required TResult Function(Client client) clientChanged,
    required TResult Function(Operator serviceOperator) operatorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initScreen,
    TResult? Function()? saveOrder,
    TResult? Function(List<AssistanceCombo> assistances)? assistancesChanged,
    TResult? Function(Client client)? clientChanged,
    TResult? Function(Operator serviceOperator)? operatorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initScreen,
    TResult Function()? saveOrder,
    TResult Function(List<AssistanceCombo> assistances)? assistancesChanged,
    TResult Function(Client client)? clientChanged,
    TResult Function(Operator serviceOperator)? operatorChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(SaveOrder value) saveOrder,
    required TResult Function(AssistancesChanged value) assistancesChanged,
    required TResult Function(ClientChanged value) clientChanged,
    required TResult Function(OperatorChanged value) operatorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(SaveOrder value)? saveOrder,
    TResult? Function(AssistancesChanged value)? assistancesChanged,
    TResult? Function(ClientChanged value)? clientChanged,
    TResult? Function(OperatorChanged value)? operatorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitScreen value)? initScreen,
    TResult Function(SaveOrder value)? saveOrder,
    TResult Function(AssistancesChanged value)? assistancesChanged,
    TResult Function(ClientChanged value)? clientChanged,
    TResult Function(OperatorChanged value)? operatorChanged,
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
abstract class _$$InitScreenCopyWith<$Res> {
  factory _$$InitScreenCopyWith(
          _$InitScreen value, $Res Function(_$InitScreen) then) =
      __$$InitScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitScreenCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$InitScreen>
    implements _$$InitScreenCopyWith<$Res> {
  __$$InitScreenCopyWithImpl(
      _$InitScreen _value, $Res Function(_$InitScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitScreen implements InitScreen {
  const _$InitScreen();

  @override
  String toString() {
    return 'RegisterEvent.initScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initScreen,
    required TResult Function() saveOrder,
    required TResult Function(List<AssistanceCombo> assistances)
        assistancesChanged,
    required TResult Function(Client client) clientChanged,
    required TResult Function(Operator serviceOperator) operatorChanged,
  }) {
    return initScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initScreen,
    TResult? Function()? saveOrder,
    TResult? Function(List<AssistanceCombo> assistances)? assistancesChanged,
    TResult? Function(Client client)? clientChanged,
    TResult? Function(Operator serviceOperator)? operatorChanged,
  }) {
    return initScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initScreen,
    TResult Function()? saveOrder,
    TResult Function(List<AssistanceCombo> assistances)? assistancesChanged,
    TResult Function(Client client)? clientChanged,
    TResult Function(Operator serviceOperator)? operatorChanged,
    required TResult orElse(),
  }) {
    if (initScreen != null) {
      return initScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(SaveOrder value) saveOrder,
    required TResult Function(AssistancesChanged value) assistancesChanged,
    required TResult Function(ClientChanged value) clientChanged,
    required TResult Function(OperatorChanged value) operatorChanged,
  }) {
    return initScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(SaveOrder value)? saveOrder,
    TResult? Function(AssistancesChanged value)? assistancesChanged,
    TResult? Function(ClientChanged value)? clientChanged,
    TResult? Function(OperatorChanged value)? operatorChanged,
  }) {
    return initScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitScreen value)? initScreen,
    TResult Function(SaveOrder value)? saveOrder,
    TResult Function(AssistancesChanged value)? assistancesChanged,
    TResult Function(ClientChanged value)? clientChanged,
    TResult Function(OperatorChanged value)? operatorChanged,
    required TResult orElse(),
  }) {
    if (initScreen != null) {
      return initScreen(this);
    }
    return orElse();
  }
}

abstract class InitScreen implements RegisterEvent {
  const factory InitScreen() = _$InitScreen;
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
    required TResult Function() initScreen,
    required TResult Function() saveOrder,
    required TResult Function(List<AssistanceCombo> assistances)
        assistancesChanged,
    required TResult Function(Client client) clientChanged,
    required TResult Function(Operator serviceOperator) operatorChanged,
  }) {
    return saveOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initScreen,
    TResult? Function()? saveOrder,
    TResult? Function(List<AssistanceCombo> assistances)? assistancesChanged,
    TResult? Function(Client client)? clientChanged,
    TResult? Function(Operator serviceOperator)? operatorChanged,
  }) {
    return saveOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initScreen,
    TResult Function()? saveOrder,
    TResult Function(List<AssistanceCombo> assistances)? assistancesChanged,
    TResult Function(Client client)? clientChanged,
    TResult Function(Operator serviceOperator)? operatorChanged,
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
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(SaveOrder value) saveOrder,
    required TResult Function(AssistancesChanged value) assistancesChanged,
    required TResult Function(ClientChanged value) clientChanged,
    required TResult Function(OperatorChanged value) operatorChanged,
  }) {
    return saveOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(SaveOrder value)? saveOrder,
    TResult? Function(AssistancesChanged value)? assistancesChanged,
    TResult? Function(ClientChanged value)? clientChanged,
    TResult? Function(OperatorChanged value)? operatorChanged,
  }) {
    return saveOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitScreen value)? initScreen,
    TResult Function(SaveOrder value)? saveOrder,
    TResult Function(AssistancesChanged value)? assistancesChanged,
    TResult Function(ClientChanged value)? clientChanged,
    TResult Function(OperatorChanged value)? operatorChanged,
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
  $Res call({List<AssistanceCombo> assistances});
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
    Object? assistances = null,
  }) {
    return _then(_$AssistancesChanged(
      null == assistances
          ? _value._assistances
          : assistances // ignore: cast_nullable_to_non_nullable
              as List<AssistanceCombo>,
    ));
  }
}

/// @nodoc

class _$AssistancesChanged implements AssistancesChanged {
  const _$AssistancesChanged(final List<AssistanceCombo> assistances)
      : _assistances = assistances;

  final List<AssistanceCombo> _assistances;
  @override
  List<AssistanceCombo> get assistances {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assistances);
  }

  @override
  String toString() {
    return 'RegisterEvent.assistancesChanged(assistances: $assistances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssistancesChanged &&
            const DeepCollectionEquality()
                .equals(other._assistances, _assistances));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_assistances));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssistancesChangedCopyWith<_$AssistancesChanged> get copyWith =>
      __$$AssistancesChangedCopyWithImpl<_$AssistancesChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initScreen,
    required TResult Function() saveOrder,
    required TResult Function(List<AssistanceCombo> assistances)
        assistancesChanged,
    required TResult Function(Client client) clientChanged,
    required TResult Function(Operator serviceOperator) operatorChanged,
  }) {
    return assistancesChanged(assistances);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initScreen,
    TResult? Function()? saveOrder,
    TResult? Function(List<AssistanceCombo> assistances)? assistancesChanged,
    TResult? Function(Client client)? clientChanged,
    TResult? Function(Operator serviceOperator)? operatorChanged,
  }) {
    return assistancesChanged?.call(assistances);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initScreen,
    TResult Function()? saveOrder,
    TResult Function(List<AssistanceCombo> assistances)? assistancesChanged,
    TResult Function(Client client)? clientChanged,
    TResult Function(Operator serviceOperator)? operatorChanged,
    required TResult orElse(),
  }) {
    if (assistancesChanged != null) {
      return assistancesChanged(assistances);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(SaveOrder value) saveOrder,
    required TResult Function(AssistancesChanged value) assistancesChanged,
    required TResult Function(ClientChanged value) clientChanged,
    required TResult Function(OperatorChanged value) operatorChanged,
  }) {
    return assistancesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(SaveOrder value)? saveOrder,
    TResult? Function(AssistancesChanged value)? assistancesChanged,
    TResult? Function(ClientChanged value)? clientChanged,
    TResult? Function(OperatorChanged value)? operatorChanged,
  }) {
    return assistancesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitScreen value)? initScreen,
    TResult Function(SaveOrder value)? saveOrder,
    TResult Function(AssistancesChanged value)? assistancesChanged,
    TResult Function(ClientChanged value)? clientChanged,
    TResult Function(OperatorChanged value)? operatorChanged,
    required TResult orElse(),
  }) {
    if (assistancesChanged != null) {
      return assistancesChanged(this);
    }
    return orElse();
  }
}

abstract class AssistancesChanged implements RegisterEvent {
  const factory AssistancesChanged(final List<AssistanceCombo> assistances) =
      _$AssistancesChanged;

  List<AssistanceCombo> get assistances;
  @JsonKey(ignore: true)
  _$$AssistancesChangedCopyWith<_$AssistancesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientChangedCopyWith<$Res> {
  factory _$$ClientChangedCopyWith(
          _$ClientChanged value, $Res Function(_$ClientChanged) then) =
      __$$ClientChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Client client});

  $ClientCopyWith<$Res> get client;
}

/// @nodoc
class __$$ClientChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ClientChanged>
    implements _$$ClientChangedCopyWith<$Res> {
  __$$ClientChangedCopyWithImpl(
      _$ClientChanged _value, $Res Function(_$ClientChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$ClientChanged(
      null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value));
    });
  }
}

/// @nodoc

class _$ClientChanged implements ClientChanged {
  const _$ClientChanged(this.client);

  @override
  final Client client;

  @override
  String toString() {
    return 'RegisterEvent.clientChanged(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientChanged &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientChangedCopyWith<_$ClientChanged> get copyWith =>
      __$$ClientChangedCopyWithImpl<_$ClientChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initScreen,
    required TResult Function() saveOrder,
    required TResult Function(List<AssistanceCombo> assistances)
        assistancesChanged,
    required TResult Function(Client client) clientChanged,
    required TResult Function(Operator serviceOperator) operatorChanged,
  }) {
    return clientChanged(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initScreen,
    TResult? Function()? saveOrder,
    TResult? Function(List<AssistanceCombo> assistances)? assistancesChanged,
    TResult? Function(Client client)? clientChanged,
    TResult? Function(Operator serviceOperator)? operatorChanged,
  }) {
    return clientChanged?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initScreen,
    TResult Function()? saveOrder,
    TResult Function(List<AssistanceCombo> assistances)? assistancesChanged,
    TResult Function(Client client)? clientChanged,
    TResult Function(Operator serviceOperator)? operatorChanged,
    required TResult orElse(),
  }) {
    if (clientChanged != null) {
      return clientChanged(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(SaveOrder value) saveOrder,
    required TResult Function(AssistancesChanged value) assistancesChanged,
    required TResult Function(ClientChanged value) clientChanged,
    required TResult Function(OperatorChanged value) operatorChanged,
  }) {
    return clientChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(SaveOrder value)? saveOrder,
    TResult? Function(AssistancesChanged value)? assistancesChanged,
    TResult? Function(ClientChanged value)? clientChanged,
    TResult? Function(OperatorChanged value)? operatorChanged,
  }) {
    return clientChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitScreen value)? initScreen,
    TResult Function(SaveOrder value)? saveOrder,
    TResult Function(AssistancesChanged value)? assistancesChanged,
    TResult Function(ClientChanged value)? clientChanged,
    TResult Function(OperatorChanged value)? operatorChanged,
    required TResult orElse(),
  }) {
    if (clientChanged != null) {
      return clientChanged(this);
    }
    return orElse();
  }
}

abstract class ClientChanged implements RegisterEvent {
  const factory ClientChanged(final Client client) = _$ClientChanged;

  Client get client;
  @JsonKey(ignore: true)
  _$$ClientChangedCopyWith<_$ClientChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OperatorChangedCopyWith<$Res> {
  factory _$$OperatorChangedCopyWith(
          _$OperatorChanged value, $Res Function(_$OperatorChanged) then) =
      __$$OperatorChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Operator serviceOperator});

  $OperatorCopyWith<$Res> get serviceOperator;
}

/// @nodoc
class __$$OperatorChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$OperatorChanged>
    implements _$$OperatorChangedCopyWith<$Res> {
  __$$OperatorChangedCopyWithImpl(
      _$OperatorChanged _value, $Res Function(_$OperatorChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceOperator = null,
  }) {
    return _then(_$OperatorChanged(
      null == serviceOperator
          ? _value.serviceOperator
          : serviceOperator // ignore: cast_nullable_to_non_nullable
              as Operator,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OperatorCopyWith<$Res> get serviceOperator {
    return $OperatorCopyWith<$Res>(_value.serviceOperator, (value) {
      return _then(_value.copyWith(serviceOperator: value));
    });
  }
}

/// @nodoc

class _$OperatorChanged implements OperatorChanged {
  const _$OperatorChanged(this.serviceOperator);

  @override
  final Operator serviceOperator;

  @override
  String toString() {
    return 'RegisterEvent.operatorChanged(serviceOperator: $serviceOperator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperatorChanged &&
            (identical(other.serviceOperator, serviceOperator) ||
                other.serviceOperator == serviceOperator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceOperator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperatorChangedCopyWith<_$OperatorChanged> get copyWith =>
      __$$OperatorChangedCopyWithImpl<_$OperatorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initScreen,
    required TResult Function() saveOrder,
    required TResult Function(List<AssistanceCombo> assistances)
        assistancesChanged,
    required TResult Function(Client client) clientChanged,
    required TResult Function(Operator serviceOperator) operatorChanged,
  }) {
    return operatorChanged(serviceOperator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initScreen,
    TResult? Function()? saveOrder,
    TResult? Function(List<AssistanceCombo> assistances)? assistancesChanged,
    TResult? Function(Client client)? clientChanged,
    TResult? Function(Operator serviceOperator)? operatorChanged,
  }) {
    return operatorChanged?.call(serviceOperator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initScreen,
    TResult Function()? saveOrder,
    TResult Function(List<AssistanceCombo> assistances)? assistancesChanged,
    TResult Function(Client client)? clientChanged,
    TResult Function(Operator serviceOperator)? operatorChanged,
    required TResult orElse(),
  }) {
    if (operatorChanged != null) {
      return operatorChanged(serviceOperator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitScreen value) initScreen,
    required TResult Function(SaveOrder value) saveOrder,
    required TResult Function(AssistancesChanged value) assistancesChanged,
    required TResult Function(ClientChanged value) clientChanged,
    required TResult Function(OperatorChanged value) operatorChanged,
  }) {
    return operatorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitScreen value)? initScreen,
    TResult? Function(SaveOrder value)? saveOrder,
    TResult? Function(AssistancesChanged value)? assistancesChanged,
    TResult? Function(ClientChanged value)? clientChanged,
    TResult? Function(OperatorChanged value)? operatorChanged,
  }) {
    return operatorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitScreen value)? initScreen,
    TResult Function(SaveOrder value)? saveOrder,
    TResult Function(AssistancesChanged value)? assistancesChanged,
    TResult Function(ClientChanged value)? clientChanged,
    TResult Function(OperatorChanged value)? operatorChanged,
    required TResult orElse(),
  }) {
    if (operatorChanged != null) {
      return operatorChanged(this);
    }
    return orElse();
  }
}

abstract class OperatorChanged implements RegisterEvent {
  const factory OperatorChanged(final Operator serviceOperator) =
      _$OperatorChanged;

  Operator get serviceOperator;
  @JsonKey(ignore: true)
  _$$OperatorChangedCopyWith<_$OperatorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  OrderDto get form => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Option<Either<Failure, List<AssistanceCombo>>> get assistances =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, List<Client>>> get clients =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, List<Operator>>> get operators =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get save => throw _privateConstructorUsedError;

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
      Option<Either<Failure, List<AssistanceCombo>>> assistances,
      Option<Either<Failure, List<Client>>> clients,
      Option<Either<Failure, List<Operator>>> operators,
      Option<Either<Failure, Unit>> save});

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
    Object? assistances = null,
    Object? clients = null,
    Object? operators = null,
    Object? save = null,
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
      assistances: null == assistances
          ? _value.assistances
          : assistances // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<AssistanceCombo>>>,
      clients: null == clients
          ? _value.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Client>>>,
      operators: null == operators
          ? _value.operators
          : operators // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Operator>>>,
      save: null == save
          ? _value.save
          : save // ignore: cast_nullable_to_non_nullable
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
      Option<Either<Failure, List<AssistanceCombo>>> assistances,
      Option<Either<Failure, List<Client>>> clients,
      Option<Either<Failure, List<Operator>>> operators,
      Option<Either<Failure, Unit>> save});

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
    Object? assistances = null,
    Object? clients = null,
    Object? operators = null,
    Object? save = null,
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
      assistances: null == assistances
          ? _value.assistances
          : assistances // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<AssistanceCombo>>>,
      clients: null == clients
          ? _value.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Client>>>,
      operators: null == operators
          ? _value.operators
          : operators // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Operator>>>,
      save: null == save
          ? _value.save
          : save // ignore: cast_nullable_to_non_nullable
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
      required this.assistances,
      required this.clients,
      required this.operators,
      required this.save});

  @override
  final OrderDto form;
  @override
  final bool isLoading;
  @override
  final bool isSaving;
  @override
  final bool showErrors;
  @override
  final Option<Either<Failure, List<AssistanceCombo>>> assistances;
  @override
  final Option<Either<Failure, List<Client>>> clients;
  @override
  final Option<Either<Failure, List<Operator>>> operators;
  @override
  final Option<Either<Failure, Unit>> save;

  @override
  String toString() {
    return 'RegisterState(form: $form, isLoading: $isLoading, isSaving: $isSaving, showErrors: $showErrors, assistances: $assistances, clients: $clients, operators: $operators, save: $save)';
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
            (identical(other.assistances, assistances) ||
                other.assistances == assistances) &&
            (identical(other.clients, clients) || other.clients == clients) &&
            (identical(other.operators, operators) ||
                other.operators == operators) &&
            (identical(other.save, save) || other.save == save));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form, isLoading, isSaving,
      showErrors, assistances, clients, operators, save);

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
      required final Option<Either<Failure, List<AssistanceCombo>>> assistances,
      required final Option<Either<Failure, List<Client>>> clients,
      required final Option<Either<Failure, List<Operator>>> operators,
      required final Option<Either<Failure, Unit>> save}) = _$_RegisterState;

  @override
  OrderDto get form;
  @override
  bool get isLoading;
  @override
  bool get isSaving;
  @override
  bool get showErrors;
  @override
  Option<Either<Failure, List<AssistanceCombo>>> get assistances;
  @override
  Option<Either<Failure, List<Client>>> get clients;
  @override
  Option<Either<Failure, List<Operator>>> get operators;
  @override
  Option<Either<Failure, Unit>> get save;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
