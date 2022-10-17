import 'package:abctechfront/application/order/order_bloc.dart';
import 'package:abctechfront/domain/core/enums/order_status_enum.dart';
import 'package:abctechfront/domain/core/extensions/x_dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatusFilter extends StatelessWidget {
  const StatusFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        return Container(
          constraints: const BoxConstraints(maxWidth: 475.0),
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            children: [
              ...OrderStatus.values
                  .map(
                    (e) => StatusTag(
                      status: e,
                      isSelected: state.status == e,
                    ),
                  )
                  .toList()
            ],
          ),
        );
      },
    );
  }
}

class StatusTag extends StatelessWidget {
  final OrderStatus status;
  final bool isSelected;

  const StatusTag({
    required this.status,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<OrderBloc>().add(OrderEvent.statusChanged(status));
      },
      customBorder: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(60),
        ),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
          side: BorderSide(color: status.color),
        ),
        color: isSelected ? status.color : Colors.white,
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text(
            status.name.capitalize(),
            style: TextStyle(
              color: isSelected ? Colors.white : status.color,
            ),
          ),
        ),
      ),
    );
  }
}
