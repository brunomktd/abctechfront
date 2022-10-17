import 'package:abctechfront/domain/assistance/entity/assistance_combo.dart';
import 'package:abctechfront/domain/assistance/interface/i_assistance_facade.dart';
import 'package:abctechfront/domain/client/entity/client.dart';
import 'package:abctechfront/domain/client/interface/i_client_facade.dart';
import 'package:abctechfront/domain/core/failure/failures.dart';
import 'package:abctechfront/domain/operator/entity/operator.dart';
import 'package:abctechfront/domain/operator/interface/i_operator_facade.dart';
import 'package:abctechfront/domain/order/dto/order_dto.dart';
import 'package:abctechfront/domain/order/interface/i_order_facade.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IAssistanceFacade _assistanceFacade;
  final IClientFacade _clientFacade;
  final IOperatorFacade _operatorFacade;
  final IOrderFacade _orderFacade;

  RegisterBloc(
    this._assistanceFacade,
    this._clientFacade,
    this._operatorFacade,
    this._orderFacade,
  ) : super(RegisterState.initial()) {
    on<RegisterEvent>((event, emit) async {
      await event.map(
        initScreen: (e) async {
          emit(
            state.copyWith(
              isLoading: true,
              form: OrderDto.empty(),
            ),
          );

          final assistances = await _assistanceFacade.fetchCombo();

          final clients = await _clientFacade.fetchAll();

          final operators = await _operatorFacade.fetchAll();

          emit(
            state.copyWith(
              assistances: some(assistances),
              clients: some(clients),
              operators: some(operators),
              isLoading: false,
            ),
          );
        },
        saveOrder: (e) async {
          if (state.form.failureOption.isNone()) {
            emit(state.copyWith(isSaving: true));

            final save = await _orderFacade.create(form: state.form);

            emit(state.copyWith(isSaving: false, save: some(save)));
          } else {
            emit(state.copyWith(showErrors: true, isSaving: false, save: none()));
          }
        },
        assistancesChanged: (e) async {
          emit(
            state.copyWith(
              form: state.form.copyWith(
                services: e.assistances,
              ),
            ),
          );
        },
        clientChanged: (e) async {
          emit(
            state.copyWith(
              form: state.form.copyWith(
                client: e.client,
              ),
            ),
          );
        },
        operatorChanged: (e) async {
          emit(
            state.copyWith(
              form: state.form.copyWith(
                serviceOperator: e.serviceOperator,
              ),
            ),
          );
        },
      );
    });
  }
}
