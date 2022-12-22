import 'package:flutter/material.dart';

class ContainerDeInfo extends StatelessWidget {
  final Color corDeFundo;
  final Widget conteudo;
  final double comprimento;
  final double altura;
  final BoxShadow configSombra;
  const ContainerDeInfo({
    super.key,
    required this.corDeFundo,
    required this.conteudo,
    this.comprimento = 0,
    this.altura = 100,
    this.configSombra = const BoxShadow(
      color: Colors.transparent,
      spreadRadius: 0,
      blurRadius: 0,
      offset: Offset(0, 0),
    ),
  });

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
        borderRadius: BorderRadius.circular(24),
        boxShadow: [configSombra],
      ),
      child: conteudo,
    );
  }
}
