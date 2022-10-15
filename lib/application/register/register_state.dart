part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required OrderDto form,
    required bool isLoading,
    required bool isSaving,
    required bool showErrors,
    required Option<Either<Failure, List<AssistanceCombo>>> assistancesOption,
    required Option<Either<Failure, Unit>> saveOption,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        form: OrderDto.empty(),
        isLoading: true,
        isSaving: false,
        showErrors: false,
        assistancesOption: none(),
        saveOption: none(),
      );
}
