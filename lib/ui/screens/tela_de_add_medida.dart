import 'package:flutter/material.dart';

class TelaDeAddMedida extends StatelessWidget {
  final String mensagem;
  final String unidadeDeMedida;
  const TelaDeAddMedida(
      {super.key, required this.mensagem, required this.unidadeDeMedida});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _valorcontroller = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mensagem,
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
              Text(unidadeDeMedida),
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
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward),
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
