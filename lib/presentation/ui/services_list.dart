import 'package:abctechfront/domain/assistance/entity/assistance_combo.dart';
import 'package:flutter/material.dart';

class ServicesList extends StatelessWidget {
  final List<AssistanceCombo> services;
  const ServicesList({required this.services, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Serviços',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              if (services.isEmpty)
                const Text(
                  'Selecione os serviços',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              if (services.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...services.map(
                      (e) => Text(
                        ' \u2022 ${e.name}',
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                )
            ],
          ),
          const SizedBox(width: 50),
        ],
      ),
    );
  }
}
