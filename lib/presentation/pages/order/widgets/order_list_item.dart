import 'package:abctechfront/application/order/order_bloc.dart';
import 'package:abctechfront/domain/core/extensions/x_dartz.dart';
import 'package:abctechfront/domain/order/entity/order.dart';
import 'package:abctechfront/presentation/pages/order/widgets/order_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderListItem extends StatefulWidget {
  final Order order;
  const OrderListItem({required this.order, super.key});

  @override
  State<OrderListItem> createState() => _OrderListItemState();
}

class _OrderListItemState extends State<OrderListItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        return ExpansionTile(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Text('#${widget.order.orderId.toString().padLeft(3, '0')}'),
              ),
              Expanded(
                flex: 2,
                child: Text('#${widget.order.operatorId.toString().padLeft(3, '0')}'),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  widget.order.status.toString().split('.')[1].capitalize(),
                ),
              ),
            ],
          ),
          expandedAlignment: Alignment.centerLeft,
          childrenPadding: const EdgeInsets.all(8),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Serviços:'),
                    const SizedBox(
                      height: 8,
                    ),
                    Column(
                      children: [...widget.order.services.map((e) => Text(' \u2022 ${e.name}'))],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Divider(
                    thickness: 1,
                    color: Colors.deepPurple[100],
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      OrderAction(
                        widget.order.start,
                        'Data cadastro:',
                        'Iniciar',
                        () => context.read<OrderBloc>().add(
                              OrderEvent.startOrder(widget.order.orderId),
                            ),
                      ),
                      if (widget.order.start != null) ...[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: VerticalDivider(
                            thickness: 1,
                            color: Colors.deepPurple[100],
                          ),
                        ),
                        OrderAction(
                          widget.order.end,
                          'Data conclusão:',
                          'Finalizar',
                          () => context.read<OrderBloc>().add(
                                OrderEvent.endOrder(widget.order.orderId),
                              ),
                        ),
                      ]
                    ],
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }
}
