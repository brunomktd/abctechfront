import 'package:abctechfront/application/register/register_bloc.dart';
import 'package:abctechfront/domain/assistance/entity/assistance_combo.dart';
import 'package:abctechfront/domain/core/entity/id_route_param.dart';
import 'package:abctechfront/domain/core/extensions/x_dartz.dart';
import 'package:abctechfront/injection.dart';
import 'package:abctechfront/presentation/ui/app_alerts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final params = ModalRoute.of(context)!.settings.arguments! as IdRouteParam;

    return BlocProvider(
      create: (context) => getIt.get<RegisterBloc>()..add(const RegisterEvent.loadAssistances()),
      child: Builder(
        builder: (context) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text('${params.id == 0 ? 'Nova' : 'Consultar'} ordem de serviço'),
                actions: const [],
              ),
              body: BlocConsumer<RegisterBloc, RegisterState>(
                listener: (context, state) => {
                  state.saveOption.foldResponse(
                    (success) => Navigator.of(context).pop(),
                    (failure) =>
                        AppAlert.createError(message: failure.errors.first.message).show(context),
                  )
                },
                builder: (context, state) {
                  if (state.isLoading) return const Center(child: CircularProgressIndicator());

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Chave',
                            labelText: 'Chave',
                          ),
                          initialValue: state.form.orderNumber.getOrElse(''),
                          enabled: false,
                          autocorrect: false,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        MultiSelectDialogField(
                          items: context
                              .read<RegisterBloc>()
                              .state
                              .assistancesOption
                              .getOrDflt([])
                              .map((e) => MultiSelectItem(e, e.name))
                              .toList(),
                          title: const Text("Serviços"),
                          selectedColor: Colors.deepPurpleAccent,
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent.withOpacity(0.1),
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: Colors.deepPurpleAccent,
                              width: 2,
                            ),
                          ),
                          buttonIcon: Icon(
                            Icons.engineering,
                            color: Colors.deepPurpleAccent[700],
                          ),
                          buttonText: Text(
                            "Serviços",
                            style: TextStyle(
                              color: Colors.deepPurpleAccent[700],
                              fontSize: 16,
                            ),
                          ),
                          onConfirm: (List<AssistanceCombo> results) {
                            context.read<RegisterBloc>().add(
                                  RegisterEvent.assistancesChanged(
                                    results.map((AssistanceCombo e) => e.id).toList(),
                                  ),
                                );
                          },
                          validator: (_) {
                            return context.read<RegisterBloc>().state.form.services.isEmpty
                                ? 'Selecione um serviço'
                                : '';
                          },
                          autovalidateMode: state.showErrors
                              ? AutovalidateMode.always
                              : AutovalidateMode.disabled,
                        ),
                      ],
                    ),
                  );
                },
              ),
              floatingActionButton: BlocBuilder<RegisterBloc, RegisterState>(
                builder: (context, state) {
                  return FloatingActionButton(
                    child: !state.isSaving
                        ? const Icon(
                            Icons.check_rounded,
                            size: 45,
                          )
                        : const CircularProgressIndicator(
                            color: Colors.white,
                          ),
                    onPressed: () {
                      if (!state.isSaving) {
                        context.read<RegisterBloc>().add(const RegisterEvent.saveOrder());
                      }
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
