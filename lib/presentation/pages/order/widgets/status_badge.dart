import 'package:abctechfront/domain/core/enums/order_status_enum.dart';
import 'package:abctechfront/domain/core/extensions/x_dartz.dart';
import 'package:flutter/material.dart';

class StatusBadge extends StatelessWidget {
  final OrderStatus status;
  const StatusBadge({required this.status, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 68,
      height: 22,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: status.color,
        border: Border.all(color: status.color),
        borderRadius: const BorderRadius.all(
          Radius.circular(60),
        ),
      ),
      child: Center(
        child: Text(
          status.name.capitalize(),
          style: const TextStyle(
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
