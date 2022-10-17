part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required OrderDto form,
    required bool isLoading,
    required bool isSaving,
    required bool showErrors,
    required Option<Either<Failure, List<AssistanceCombo>>> assistances,
    required Option<Either<Failure, List<Client>>> clients,
    required Option<Either<Failure, List<Operator>>> operators,
    required Option<Either<Failure, Unit>> save,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        form: OrderDto.empty(),
        isLoading: true,
        isSaving: false,
        showErrors: false,
        assistances: none(),
        clients: none(),
        operators: none(),
        save: none(),
      );
}
