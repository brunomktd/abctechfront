import 'package:abctechfront/application/order/order_bloc.dart';
import 'package:abctechfront/injection.dart';
import 'package:abctechfront/presentation/pages/order/order_page.dart';
import 'package:abctechfront/presentation/ui/app_swatch.dart';
import 'package:abctechfront/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterWebFrame(
      maximumSize: Size(475.0, Size.infinite.height),
      backgroundColor: Colors.white,
      builder: (context) {
        return MaterialApp(
          title: 'ABC Tech',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: createMaterialColor(const Color(0xFF9B59B6)),
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: const Color(0xFF838383), //<-- SEE HERE
                  displayColor: const Color(0xFF838383), //<-- SEE HERE
                ),
          ),
          onGenerateRoute: (settings) => routes[settings.name]!(context),
          home: BlocProvider(
            create: (context) => getIt.get<OrderBloc>()
              ..add(const OrderEvent.initGeolocation())
              ..add(const OrderEvent.loadOrders()),
            child: const OrderPage(),
          ),
        );
      },
    );
  }
}
