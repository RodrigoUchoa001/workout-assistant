import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:measure_tracker/models/msg_de_add_medida.dart';
import 'package:measure_tracker/ui/screens/tela_da_bottom_nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

// TODO: Remover esse arquivo depois
@Deprecated('Use [TelaDeAddMedidasNew]')
class TelaDeAddMedida extends StatefulWidget {
  final List<MsgDeAddMedida> msgsDeMedidas;
  const TelaDeAddMedida({super.key, required this.msgsDeMedidas});

  @override
  State<TelaDeAddMedida> createState() => _TelaDeAddMedidaState();
}

class _TelaDeAddMedidaState extends State<TelaDeAddMedida> {
  final TextEditingController valorcontroller = TextEditingController();

  int contadorDeMedida = 0;

  _finalizarCadastroNoBD() {
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.msgsDeMedidas[contadorDeMedida].msg,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    // width:
                    //     widget.msgsDeMedidas[contadorDeMedida].campoDeTextoLargo
                    //         ? MediaQuery.of(context).size.width - 100
                    //         : 100,
                    child: TextFormField(
                      controller: valorcontroller,
                      keyboardType:
                          widget.msgsDeMedidas[contadorDeMedida].inputType,
                      onTap: widget.msgsDeMedidas[contadorDeMedida]
                              .precisaDoSeletorDeData
                          ? () {
                              abrirSeletorDeData(context);
                            }
                          : () {},
                    ),
                  ),
                  Text(widget.msgsDeMedidas[contadorDeMedida].unidadeDeMedida),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  CircleAvatar(
                    backgroundColor: Theme.of(context).canvasColor,
                    radius: 24,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward),
                      color: Colors.black,
                      onPressed: () {
                        if (contadorDeMedida >=
                            widget.msgsDeMedidas.length - 1) {
                          _finalizarCadastroNoBD();
                        } else {
                          setState(() {
                            contadorDeMedida++;
                          });
                        }
                        valorcontroller.clear();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> abrirSeletorDeData(BuildContext context) async {
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
        String dataFormato = DateFormat('dd/MM/yyyy').format(novaData);
        valorcontroller.text = dataFormato;
      },
    );
  }
}
