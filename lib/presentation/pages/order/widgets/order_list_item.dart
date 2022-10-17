import 'package:abctechfront/application/order/order_bloc.dart';
import 'package:abctechfront/domain/core/enums/order_status_enum.dart';
import 'package:abctechfront/domain/core/extensions/x_dartz.dart';
import 'package:abctechfront/domain/order/entity/order.dart';
import 'package:abctechfront/presentation/pages/order/widgets/status_badge.dart';
import 'package:abctechfront/presentation/ui/app_colors.dart';
import 'package:abctechfront/presentation/ui/services_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class OrderListItem extends StatefulWidget {
  final Order order;
  const OrderListItem({required this.order, super.key});

  @override
  State<OrderListItem> createState() => _OrderListItemState();
}

class _OrderListItemState extends State<OrderListItem> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Material(
            borderRadius: BorderRadius.circular(30),
            clipBehavior: Clip.antiAlias,
            elevation: 4,
            child: Theme(
              data: Theme.of(context).copyWith(
                dividerColor: Colors.transparent,
              ),
              child: ExpansionTile(
                textColor: textColor,
                onExpansionChanged: (value) => {
                  setState(
                    () => isOpen = value,
                  )
                },
                trailing: const SizedBox(),
                title: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.lightbulb_circle_rounded,
                            color: Colors.grey.shade400,
                            size: 70,
                          ),
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'OS',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'TEC${widget.order.orderId.toString().padLeft(3, '0')}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text(
                                      'Técnico',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      state.operators
                                          .getOrDflt([])
                                          .firstWhere(
                                            (e) => e.operatorId == widget.order.operatorId,
                                          )
                                          .name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Cliente',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      state.clients
                                          .getOrDflt([])
                                          .firstWhere((e) => e.id == widget.order.client.id)
                                          .name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text(
                                      'Criação',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      DateFormat('dd/MM/yyyy').format(widget.order.createdAt),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            transform: Matrix4.translationValues(24, 0, 0),
                            child: StatusBadge(status: widget.order.status),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            isOpen
                                ? Icons.keyboard_arrow_up_rounded
                                : Icons.keyboard_arrow_down_rounded,
                            color: Colors.blue,
                          ),
                          Text(
                            isOpen ? 'VER MENOS' : 'VER DETALHES',
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: const EdgeInsets.all(8),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ServicesList(services: widget.order.services),
                      if (widget.order.status == OrderStatus.ANDAMENTO ||
                          widget.order.status == OrderStatus.PENDENTE)
                        Divider(
                          thickness: 2,
                          indent: 16,
                          endIndent: 16,
                          color: primaryColor.withOpacity(0.1),
                        ),
                      if (widget.order.status == OrderStatus.ANDAMENTO ||
                          widget.order.status == OrderStatus.PENDENTE)
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  const Text(
                                    'Como deseja seguir com o atendimento?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Colors.white),
                                          elevation: MaterialStateProperty.all(0),
                                          side: MaterialStateProperty.all(
                                            BorderSide(
                                              color: primaryColor,
                                            ),
                                          ),
                                        ),
                                        onPressed: () => context
                                            .read<OrderBloc>()
                                            .add(OrderEvent.cancelOrder(widget.order.orderId)),
                                        child: Text(
                                          'CANCELAR',
                                          style: TextStyle(
                                            color: textColor,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      if (widget.order.start == null)
                                        ElevatedButton(
                                          onPressed: () => context
                                              .read<OrderBloc>()
                                              .add(OrderEvent.startOrder(widget.order.orderId)),
                                          child: const Text('INICIAR'),
                                        ),
                                      if (widget.order.start != null)
                                        ElevatedButton(
                                          onPressed: () => context
                                              .read<OrderBloc>()
                                              .add(OrderEvent.endOrder(widget.order.orderId)),
                                          child: const Text('FINALIZAR'),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
