import 'package:flutter/material.dart';

class TelaDeAddMedida extends StatefulWidget {
  final String mensagem;
  final String unidadeDeMedida;
  const TelaDeAddMedida(
      {super.key, required this.mensagem, required this.unidadeDeMedida});

  @override
  State<TelaDeAddMedida> createState() => _TelaDeAddMedidaState();
}

class _TelaDeAddMedidaState extends State<TelaDeAddMedida> {
  int contadorDeMedida = 0;
  List<String> msgsDeMedidas = [
    "Qual a medida do seu braço esquerdo?",
    "Qual a medida do seu peito?",
    "Qual a medida das suas costas?",
    "Qual a medida da sua barriga?",
    "Qual a medida da sua cintura?",
    "Qual a medida do seu bumbum?",
    "Qual a medida da sua coxa esquerda?",
    "Qual a medida da sua coxa direita?",
    "Qual a medida da sua panturrilha esquerda?",
    "Qual a medida da sua panturrilha direita?",
    "E por último, qual o seu peso?",
  ];

  // late List<double> valoresAdicionados = [];

  @override
  Widget build(BuildContext context) {
    final TextEditingController _valorcontroller = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              msgsDeMedidas[contadorDeMedida],
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  child: TextFormField(
                    controller: _valorcontroller,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Text(widget.unidadeDeMedida),
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
                        if (contadorDeMedida >= msgsDeMedidas.length - 1) {
                          Navigator.pop(context);
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
    );
  }
}
