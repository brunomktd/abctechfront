import 'package:abctechfront/application/order/order_bloc.dart';
import 'package:abctechfront/domain/core/extensions/x_dartz.dart';
import 'package:abctechfront/domain/operator/entity/operator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OperatorFilter extends StatelessWidget {
  const OperatorFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
            child: SmartSelect<Operator>.single(
              tileBuilder: (context, value) => S2Tile.fromState(
                value,
                hideValue: true,
                dense: true,
                trailing: const Icon(
                  Icons.search,
                ),
                title: Row(
                  children: [
                    const Text(
                      'Buscar por técnico',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    if (state.serviceOperator.name != '')
                      Text(
                        ': ${state.serviceOperator.name}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
              title: 'CLIENTE',
              placeholder: '',
              modalType: S2ModalType.bottomSheet,
              selectedValue: context.read<OrderBloc>().state.serviceOperator,
              choiceItems: context
                  .read<OrderBloc>()
                  .state
                  .operators
                  .getOrDflt([])
                  .map((e) => S2Choice(value: e, title: e.name))
                  .toList(),
              onChange: (selection) => {
                context.read<OrderBloc>().add(
                      OrderEvent.operatorChanged(
                        selection.value,
                      ),
                    )
              },
            ),
          ),
        );
      },
    );
  }
}
