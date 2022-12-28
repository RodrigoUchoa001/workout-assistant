import 'package:flutter/material.dart';
import 'package:measure_tracker/models/msg_de_add_medida.dart';
import 'package:measure_tracker/ui/screens/tela_da_bottom_nav_bar.dart';

class TelaDeAddMedida extends StatefulWidget {
  final List<MsgDeAddMedida> msgsDeMedidas;
  const TelaDeAddMedida({super.key, required this.msgsDeMedidas});

  @override
  State<TelaDeAddMedida> createState() => _TelaDeAddMedidaState();
}

class _TelaDeAddMedidaState extends State<TelaDeAddMedida> {
  int contadorDeMedida = 0;

  @override
  Widget build(BuildContext context) {
    final TextEditingController valorcontroller = TextEditingController();

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
                    width: 100,
                    child: TextFormField(
                      controller: valorcontroller,
                      keyboardType: TextInputType.number,
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
                        setState(() {
                          // TODO: comando pra inserir no bd
                          if (contadorDeMedida >=
                              widget.msgsDeMedidas.length - 1) {
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
                          } else {
                            contadorDeMedida++;
                          }
                        });
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
}
