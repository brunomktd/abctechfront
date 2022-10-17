// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

enum OrderStatus {
  PENDENTE(0, Colors.grey),
  ANDAMENTO(1, Colors.orange),
  CONCLUIDO(2, Colors.green),
  CANCELADO(3, Colors.red);

  const OrderStatus(this.value, this.color);
  final num value;
  final Color color;
}
