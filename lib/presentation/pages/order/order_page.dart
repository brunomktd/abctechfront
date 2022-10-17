import 'package:abctechfront/application/order/order_bloc.dart';
import 'package:abctechfront/domain/core/extensions/x_dartz.dart';
import 'package:abctechfront/presentation/pages/order/widgets/empty_message.dart';
import 'package:abctechfront/presentation/pages/order/widgets/operator_filter.dart';
import 'package:abctechfront/presentation/pages/order/widgets/order_list_item.dart';
import 'package:abctechfront/presentation/pages/order/widgets/status_filter.dart';
import 'package:abctechfront/presentation/ui/abc_tech_bar.dart';
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
        appBar: const AbcTechBar(),
        body: BlocConsumer<OrderBloc, OrderState>(
          listener: (context, state) {
            state.orders.foldError(
              (err) => AppAlert.createError(message: err.errors.first.message).show(context),
            );
          },
          builder: (context, state) {
            final orders = state.orders.getOrDflt([]);
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: RefreshIndicator(
                onRefresh: () async {
                  context.read<OrderBloc>().add(const OrderEvent.loadOrders());
                  return Future.delayed(
                    const Duration(
                      seconds: 1,
                    ),
                  );
                },
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      const OperatorFilter(),
                      const SizedBox(
                        height: 16,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                        child: Text('Filtre por status:'),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: StatusFilter(),
                      ),
                      if (state.isLoading)
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      if (orders.isEmpty && !state.isLoading) const EmptyMessage(),
                      if (orders.isNotEmpty && !state.isLoading)
                        ListView.builder(
                          itemCount: orders.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return OrderListItem(order: orders[index]);
                          },
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add_rounded,
            size: 30,
          ),
          onPressed: () => Navigator.of(context).pushNamed('/register').then(
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
