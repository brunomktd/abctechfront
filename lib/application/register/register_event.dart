part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.loadAssistances() = LoadAssistances;
  const factory RegisterEvent.saveOrder() = SaveOrder;
  const factory RegisterEvent.assistancesChanged(List<int> ids) = AssistancesChanged;
}
