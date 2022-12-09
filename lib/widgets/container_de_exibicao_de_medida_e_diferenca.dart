import 'package:flutter/material.dart';
import 'package:measure_tracker/widgets/container_de_info.dart';

class ContainerDeExibicaoDeMedidaEDiferenca extends StatelessWidget {
  final String parteDoCorpo;
  final double medida;
  final String tipoDeMedida;
  final double diferencaDeMedida;
  const ContainerDeExibicaoDeMedidaEDiferenca(
      {super.key,
      required this.medida,
      required this.tipoDeMedida,
      required this.diferencaDeMedida,
      required this.parteDoCorpo});

  String getSinalDeDiferencaDeMedida(double diferencaDeMedida) {
    if (diferencaDeMedida > 0) {
      return '+';
    } else if (diferencaDeMedida < 0) {
      return '-';
    } else {
      return '';
    }
  }

  Color getCorDaDiferencaDeMedida(
      double diferencaDeMedida, BuildContext context) {
    // TODO: CORRIGIR diferencaDeMedida Q TÁ APARECENDO O VALOR DA MEDIDA
    debugPrint('$diferencaDeMedida');
    if (diferencaDeMedida.toInt() == 0) {
      return Theme.of(context).focusColor;
    } else if (diferencaDeMedida.toInt() < 0) {
      return Theme.of(context).errorColor;
    } else if (diferencaDeMedida.toInt() > 0) {
      return Theme.of(context).highlightColor;
    } else {
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ContainerDeInfo(
          corDeFundo: getCorDaDiferencaDeMedida(medida, context),
          comprimento: 242,
          altura: 290,
          conteudo: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              RichText(
                text: TextSpan(
                  text:
                      '${getSinalDeDiferencaDeMedida(diferencaDeMedida)}$diferencaDeMedida',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 36,
                      ),
                  children: [
                    TextSpan(
                      text: ' $tipoDeMedida',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Theme.of(context).disabledColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ContainerDeInfo(
          corDeFundo: Theme.of(context).primaryColor,
          comprimento: 242,
          altura: 220,
          configSombra: BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: -3,
            blurRadius: 7,
            offset: const Offset(0, 6),
          ),
          conteudo: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(radius: 18),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(parteDoCorpo),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(
                      // TODO: PROCURAR UMA FORMA MELHOR DE FAZER ISSO
                      text: medida.toStringAsFixed(1),
                      style: Theme.of(context).textTheme.bodyLarge,
                      children: [
                        TextSpan(
                          text: ' $tipoDeMedida',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Theme.of(context).disabledColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 36),
            ],
          ),
        ),
      ],
    );
  }
}
