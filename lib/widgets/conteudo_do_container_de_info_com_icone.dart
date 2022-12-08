import 'package:flutter/material.dart';

class ConteudoDoContainerDeInfoComIcone extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String subtitulo;
  final Widget acao;
  const ConteudoDoContainerDeInfoComIcone(
      {super.key,
      required this.icone,
      required this.titulo,
      required this.subtitulo,
      required this.acao});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(
            icone,
            size: 48,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titulo),
                  Text(
                    subtitulo,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              acao,
            ],
          ),
        )
      ],
    );
  }
}
