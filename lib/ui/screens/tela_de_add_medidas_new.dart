import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:measure_tracker/models/msg_de_add_medida.dart';
import 'package:measure_tracker/ui/screens/tela_da_bottom_nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TelaDeAddMedidasNew extends StatefulWidget {
  final DateTime dataPadrao;
  const TelaDeAddMedidasNew({super.key, required this.dataPadrao});

  @override
  State<TelaDeAddMedidasNew> createState() => _TelaDeAddMedidasNewState();
}

class _TelaDeAddMedidasNewState extends State<TelaDeAddMedidasNew> {
  int stepAtual = 0;
  List<TextEditingController> controllers = [];

  @override
  void initState() {
    controllers = getControllers();
    controllers[0].text = getDataFormatada(widget.dataPadrao);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stepper(
          physics: const BouncingScrollPhysics(),
          steps: getSteps(context),
          currentStep: stepAtual,
          onStepTapped: (step) => setState(() => stepAtual = step),
          onStepContinue: () {
            final ultimoStep = stepAtual == getSteps(context).length - 1;

            if (ultimoStep) {
              salvarDadosNoBD();
            } else {
              setState(() => stepAtual++);
            }
          },
          onStepCancel: () {
            stepAtual == 0 ? null : setState(() => stepAtual--);
          },
          controlsBuilder: (context, details) {
            final ultimoStep = stepAtual == getSteps(context).length - 1;
            return Container(
              margin: const EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: details.onStepContinue,
                      child: Text(ultimoStep ? 'Concluir' : 'Próximo'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  if (stepAtual != 0)
                    Expanded(
                      child: OutlinedButton(
                        onPressed: details.onStepCancel,
                        child: const Text('Voltar'),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List<Step> getSteps(BuildContext context) {
    List<Step> steps = [];

    for (int i = 0; i < msgDeMedidasDeCadaMes.length; i++) {
      steps.add(
        Step(
          isActive: stepAtual >= i,
          title: Text(msgDeMedidasDeCadaMes[i].msg,
              style: Theme.of(context).textTheme.titleSmall),
          content: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controllers[i],
                  keyboardType: TextInputType.number,
                  onTap: () {
                    msgDeMedidasDeCadaMes[i].precisaDoSeletorDeData
                        ? abrirSeletorDeData(context, i)
                        : null;
                  },
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 24),
                ),
              ),
              Text(msgDeMedidasDeCadaMes[i].unidadeDeMedida),
            ],
          ),
        ),
      );
    }
    return steps;
  }

  List<TextEditingController> getControllers() {
    List<TextEditingController> controllers = [];
    for (int i = 0; i < msgDeMedidasDeCadaMes.length; i++) {
      controllers.add(
        TextEditingController(),
      );
    }
    return controllers;
  }

  Future<void> abrirSeletorDeData(BuildContext context, int posicao) async {
    final dataAtual = DateTime.now();
    final novaData = await showDatePicker(
      context: context,
      initialDate: dataAtual,
      firstDate: DateTime(dataAtual.year - 100),
      lastDate: DateTime(dataAtual.year + 100),
      locale: const Locale('pt', 'BR'),
    );

    if (novaData == null) {
      return;
    }
    setState(
      () {
        // String dataFormato = DateFormat('dd/MM/yyyy').format(novaData);
        controllers[posicao].text = getDataFormatada(novaData);
      },
    );
  }

  String getDataFormatada(DateTime data) {
    return DateFormat('dd/MM/yyyy').format(data);
  }

  void salvarDadosNoBD() {
    // TODO: comando pra inserir no bd
    _setPrimeiroCadastroComoConcluido();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => const TelaDaBottomNavBar(),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Medidas inseridas com sucesso!'),
      ),
    );
  }

  _setPrimeiroCadastroComoConcluido() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('feitoPrimeiroCadastro', true);
  }
}
