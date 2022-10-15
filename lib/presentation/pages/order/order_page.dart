import 'package:abctechfront/application/order/order_bloc.dart';
import 'package:abctechfront/domain/core/entity/id_route_param.dart';
import 'package:abctechfront/domain/core/extensions/x_dartz.dart';
import 'package:abctechfront/presentation/pages/order/widgets/empty_message.dart';
import 'package:abctechfront/presentation/pages/order/widgets/order_list_item.dart';
import 'package:abctechfront/presentation/ui/app_alerts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tracker'),
          actions: const [],
        ),
        body: BlocConsumer<OrderBloc, OrderState>(
          listener: (context, state) {
            state.orders.foldError(
              (err) => AppAlert.createError(message: err.errors.first.message).show(context),
            );
          },
          builder: (context, state) {
            if (state.isLoading) return const Center(child: CircularProgressIndicator());

            final orders = state.orders.getOrDflt([]);
            return orders.isEmpty
                ? const EmptyMessage()
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 56, 8),
                            child: Row(
                              children: const [
                                Expanded(flex: 2, child: Text('Ordem')),
                                Expanded(flex: 2, child: Text('Técnico')),
                                Expanded(flex: 4, child: Text('Status')),
                              ],
                            ),
                          ),
                          const Divider(color: Colors.deepPurple, thickness: 1),
                          ListView.builder(
                            itemCount: orders.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return OrderListItem(order: orders[index]);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add_rounded,
            size: 45,
          ),
          onPressed: () => Navigator.of(context)
              .pushNamed(
                '/register',
                arguments: const IdRouteParam(id: 0),
              )
              .then(
                (value) => context.read<OrderBloc>()
                  ..add(
                    const OrderEvent.loadOrders(),
                  ),
              ),
        ),
      ),
    );
  }
}
