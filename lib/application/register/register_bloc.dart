import 'package:abctechfront/domain/assistance/entity/assistance_combo.dart';
import 'package:abctechfront/domain/assistance/interface/i_assistance_facade.dart';
import 'package:abctechfront/domain/core/entity/value_objects.dart';
import 'package:abctechfront/domain/core/failure/failures.dart';
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
  final IOrderFacade _orderFacade;

  RegisterBloc(this._assistanceFacade, this._orderFacade) : super(RegisterState.initial()) {
    on<RegisterEvent>((event, emit) async {
      await event.map(
        loadAssistances: (e) async {
          emit(state.copyWith(isLoading: true));

          final assistances = await _assistanceFacade.fetchCombo();

          emit(
            state.copyWith(
              assistancesOption: some(assistances),
              isLoading: false,
            ),
          );
        },
        saveOrder: (e) async {
          if (state.form.failureOption.isNone()) {
            emit(state.copyWith(isSaving: true));

            final save = await _orderFacade.create(form: state.form);

            emit(state.copyWith(isSaving: false, saveOption: some(save)));
          } else {
            emit(state.copyWith(showErrors: true, isSaving: false));
          }
        },
        assistancesChanged: (e) async {
          emit(
            state.copyWith(
              form: state.form.copyWith(
                services: e.ids.map((e) => Id(e)).toList(),
              ),
            ),
          );
        },
      );
    });
  }
}
