part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.initScreen() = InitScreen;
  const factory RegisterEvent.saveOrder() = SaveOrder;
  const factory RegisterEvent.assistancesChanged(List<AssistanceCombo> assistances) =
      AssistancesChanged;
  const factory RegisterEvent.clientChanged(Client client) = ClientChanged;
  const factory RegisterEvent.operatorChanged(Operator serviceOperator) = OperatorChanged;
}
