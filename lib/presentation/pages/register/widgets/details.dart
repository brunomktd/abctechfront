import 'package:abctechfront/application/register/register_bloc.dart';
import 'package:abctechfront/domain/core/extensions/x_dartz.dart';
import 'package:abctechfront/presentation/ui/services_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return Material(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(60),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Cliente'),
                          const SizedBox(height: 4),
                          Text(
                            state.form.client.name.dfltIfEmpty('Selecione o Cliente'),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Técnico'),
                          const SizedBox(height: 4),
                          Text(
                            state.form.serviceOperator.name.dfltIfEmpty('Selecione o Técnico'),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                  height: 30,
                ),
                ServicesList(services: state.form.services),
              ],
            ),
          ),
        );
      },
    );
  }
}
