import 'package:abctechfront/application/register/register_bloc.dart';
import 'package:abctechfront/domain/assistance/entity/assistance_combo.dart';
import 'package:abctechfront/domain/client/entity/client.dart';
import 'package:abctechfront/domain/core/extensions/x_dartz.dart';
import 'package:abctechfront/domain/operator/entity/operator.dart';
import 'package:abctechfront/injection.dart';
import 'package:abctechfront/presentation/pages/register/widgets/details.dart';
import 'package:abctechfront/presentation/ui/abc_tech_bar.dart';
import 'package:abctechfront/presentation/ui/app_alerts.dart';
import 'package:abctechfront/presentation/ui/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<RegisterBloc>()
        ..add(
          const RegisterEvent.initScreen(),
        ),
      child: Builder(
        builder: (context) {
          return SafeArea(
            child: Scaffold(
              appBar: const AbcTechBar(),
              body: SingleChildScrollView(
                child: BlocConsumer<RegisterBloc, RegisterState>(
                  listener: (context, state) => {
                    state.save.foldResponse(
                      (success) => Navigator.of(context).pop(),
                      (failure) =>
                          AppAlert.createError(message: failure.errors.first.message).show(context),
                    ),
                  },
                  builder: (context, state) {
                    if (state.isLoading) return const Center(child: CircularProgressIndicator());

                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'NOVA ORDEM DE SERVI??O',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 24),
                            child: Details(),
                          ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              hoverColor: primaryColor.withOpacity(0.2),
                              highlightColor: primaryColor.withOpacity(0.2),
                            ),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                                side: BorderSide(color: primaryColor),
                              ),
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              child: SmartSelect<Client>.single(
                                tileBuilder: (context, value) => S2Tile.fromState(
                                  value,
                                  hideValue: true,
                                  dense: true,
                                  trailing: Icon(
                                    Icons.person,
                                    size: 30,
                                    color: primaryColor,
                                  ),
                                  title: Text(
                                    'CLIENTE',
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                title: 'Cliente',
                                modalType: S2ModalType.bottomSheet,
                                choiceType: S2ChoiceType.chips,
                                selectedValue: context.read<RegisterBloc>().state.form.client,
                                choiceItems: context
                                    .read<RegisterBloc>()
                                    .state
                                    .clients
                                    .getOrDflt([])
                                    .map((e) => S2Choice(value: e, title: e.name))
                                    .toList(),
                                onChange: (selection) => {
                                  context.read<RegisterBloc>().add(
                                        RegisterEvent.clientChanged(
                                          selection.value,
                                        ),
                                      )
                                },
                              ),
                            ),
                          ),
                          if (state.showErrors &&
                              context.read<RegisterBloc>().state.form.client.id == 0)
                            const Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                              child: Text(
                                'Selecione um Cliente',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              hoverColor: primaryColor.withOpacity(0.2),
                              highlightColor: primaryColor.withOpacity(0.2),
                            ),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                                side: BorderSide(color: primaryColor),
                              ),
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              child: SmartSelect<AssistanceCombo>.multiple(
                                tileBuilder: (context, value) => S2Tile.fromState(
                                  value,
                                  hideValue: true,
                                  dense: true,
                                  trailing: Icon(
                                    Icons.handyman_rounded,
                                    size: 28,
                                    color: primaryColor,
                                  ),
                                  title: Text(
                                    'SERVI??OS',
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                title: 'Servi??os',
                                modalType: S2ModalType.bottomSheet,
                                choiceType: S2ChoiceType.switches,
                                selectedValue: context.read<RegisterBloc>().state.form.services,
                                choiceItems: context
                                    .read<RegisterBloc>()
                                    .state
                                    .assistances
                                    .getOrDflt([])
                                    .map((e) => S2Choice(value: e, title: e.name))
                                    .toList(),
                                onChange: (selection) => {
                                  context.read<RegisterBloc>().add(
                                        RegisterEvent.assistancesChanged(
                                          selection.value,
                                        ),
                                      )
                                },
                              ),
                            ),
                          ),
                          if (state.showErrors &&
                              context.read<RegisterBloc>().state.form.services.isEmpty)
                            const Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                              child: Text(
                                'Selecione um Servi??o',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          if (state.showErrors &&
                              context.read<RegisterBloc>().state.form.services.length > 15)
                            const Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                              child: Text(
                                'Selecione no m??ximo 15 servi??os',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              hoverColor: primaryColor.withOpacity(0.2),
                              highlightColor: primaryColor.withOpacity(0.2),
                            ),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                                side: BorderSide(color: primaryColor),
                              ),
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              child: SmartSelect<Operator>.single(
                                tileBuilder: (context, value) => S2Tile.fromState(
                                  value,
                                  dense: true,
                                  hideValue: true,
                                  trailing: Icon(
                                    Icons.manage_accounts_rounded,
                                    size: 30,
                                    color: primaryColor,
                                  ),
                                  title: Text(
                                    'T??CNICO RESPONS??VEL',
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                title: 'T??cnico Respons??vel',
                                modalType: S2ModalType.bottomSheet,
                                choiceType: S2ChoiceType.chips,
                                selectedValue:
                                    context.read<RegisterBloc>().state.form.serviceOperator,
                                choiceItems: context
                                    .read<RegisterBloc>()
                                    .state
                                    .operators
                                    .getOrDflt([])
                                    .map(
                                      (e) => S2Choice(
                                        value: e,
                                        title: e.operatorId
                                            .toString()
                                            .padLeftWithLeading('TEC', 3, '0'),
                                      ),
                                    )
                                    .toList(),
                                onChange: (selection) => {
                                  context.read<RegisterBloc>().add(
                                        RegisterEvent.operatorChanged(
                                          selection.value,
                                        ),
                                      )
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                            child: Text(
                              'Selecione um T??cnico'.getOrEmpty(
                                state.showErrors && state.form.serviceOperator.operatorId == 0,
                              ),
                              style: const TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              floatingActionButton: BlocBuilder<RegisterBloc, RegisterState>(
                builder: (context, state) {
                  return FloatingActionButton(
                    child: !state.isSaving
                        ? const Icon(
                            Icons.check_rounded,
                            size: 35,
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
