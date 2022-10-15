import 'package:abctechfront/domain/order/entity/location.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderAction extends StatelessWidget {
  final Location? location;
  final String? label;
  final String action;
  final Function() onTap;
  const OrderAction(this.location, this.label, this.action, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    if (location == null) {
      return ElevatedButton(
        onPressed: onTap,
        child: Text(action),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label!),
        Column(
          children: [Text(DateFormat('dd/MM/yyyy - kk:mm').format(location!.dateTime))],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Posição:'),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(location!.latitude.toStringAsFixed(2)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text('/'),
                    ),
                    Text(location!.longitude.toStringAsFixed(2)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
