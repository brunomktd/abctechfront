import 'package:abctechfront/application/order/order_bloc.dart';
import 'package:abctechfront/injection.dart';
import 'package:abctechfront/presentation/pages/order/order_page.dart';
import 'package:abctechfront/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AbcTech',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: routes,
      home: BlocProvider(
        create: (context) => getIt.get<OrderBloc>()
          ..add(const OrderEvent.initGeolocation())
          ..add(const OrderEvent.loadOrders()),
        child: const OrderPage(),
      ),
    );
  }
}
