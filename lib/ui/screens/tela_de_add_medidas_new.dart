import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:measure_tracker/db/banco_de_dados_metodos.dart';
import 'package:measure_tracker/db/collections/medida.dart';
import 'package:measure_tracker/db/collections/medidas_do_mes.dart';
import 'package:measure_tracker/models/msg_de_add_medida.dart';
import 'package:measure_tracker/ui/screens/tela_da_bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TelaDeAddMedidasNew extends StatefulWidget {
  final DateTime dataPadrao;
  const TelaDeAddMedidasNew({super.key, required this.dataPadrao});

  @override
  State<TelaDeAddMedidasNew> createState() => _TelaDeAddMedidasNewState();
}

class _TelaDeAddMedidasNewState extends State<TelaDeAddMedidasNew> {
  int stepAtual = 0;
  List<dynamic> controllers = [];
  late DateTime dataSelecionada;

  @override
  void initState() {
    dataSelecionada = widget.dataPadrao;
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
              concluirCadastro();
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
        dataSelecionada = novaData;
        controllers[posicao].text = getDataFormatada(novaData);
      },
    );
  }

  String getDataFormatada(DateTime data) {
    return DateFormat('dd/MM/yyyy').format(data);
  }

  void concluirCadastro() {
    // TODO: comando pra inserir no bd
    _salvarNoBD();

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

  _salvarNoBD() {
    List<String> tiposDeMedida = [
      'Braço Esquerdo',
      'Braço Direito',
      'Peito',
      'Costas',
      'Barriga',
      'Cintura',
      'Bumbum',
      'Coxa Esquerda',
      'Coxa Direita',
      'Panturrilha Esquerda',
      'Panturrilha Direita',
      'Peso',
    ];

    List<Medida> medidas = [];
    for (var i = 1; i < controllers.length; i++) {
      final medida = Medida();
      medida
        ..tipo = tiposDeMedida[i - 1]
        ..unidade = msgDeMedidasDeCadaMes[i].unidadeDeMedida
        ..valor = double.parse(controllers[i].text);

      medidas.add(medida);
    }

    MedidasDoMes todasAsmedidas = MedidasDoMes()
      ..dataDasMedidas = dataSelecionada
      ..bracoEsquerdo = medidas[0]
      ..bracoDireito = medidas[1]
      ..peito = medidas[2]
      ..costas = medidas[3]
      ..barriga = medidas[4]
      ..cintura = medidas[5]
      ..bumbum = medidas[6]
      ..coxaEsquerda = medidas[7]
      ..coxaDireita = medidas[8]
      ..panturrilhaEsquerda = medidas[9]
      ..panturrilhaDireita = medidas[10]
      ..peso = medidas[11];

    Provider.of<BancoDeDadosMetodos>(context, listen: false)
        .addMedidas(todasAsmedidas);
  }
}
