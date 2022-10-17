import 'package:abctechfront/presentation/ui/abc_tech_bar.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: AbcTechBar(
          hideMenu: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Text('''
ABC Tech

FIAP (Grupo B) - Software Engineering

Application developed for FIAP's solution sprint 3

Members:
Bruno de Oliveira
Carlos Mazzon
Marcus Barros
Thaís Dantas
'''),
        ),
      ),
    );
  }
}
