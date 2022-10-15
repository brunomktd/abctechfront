// ignore_for_file: constant_identifier_names

enum OrderStatus {
  PENDENTE(0),
  ANDAMENTO(1),
  CONCLUIDO(2),
  CANCELADO(3);

  const OrderStatus(this.value);
  final num value;
}
