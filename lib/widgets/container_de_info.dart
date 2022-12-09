import 'package:flutter/material.dart';

class ContainerDeInfo extends StatelessWidget {
  final Color corDeFundo;
  final Widget conteudo;
  final double comprimento;
  final double altura;
  const ContainerDeInfo(
      {super.key,
      required this.corDeFundo,
      required this.conteudo,
      this.comprimento = 0,
      this.altura = 100});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: altura,
      width: (comprimento == 0 ? width : comprimento),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: corDeFundo,
        borderRadius: BorderRadius.circular(17),
      ),
      child: conteudo,
    );
  }
}
