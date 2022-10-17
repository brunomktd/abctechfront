import 'package:flutter/material.dart';

class EmptyMessage extends StatelessWidget {
  const EmptyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Center(child: Text("Nenhuma ordem de serviço econtrada")),
    );
  }
}
