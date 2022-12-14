import 'package:flutter/material.dart';
import 'package:measure_tracker/ui/widgets/container_de_info.dart';

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
    // debugPrint('$diferencaDeMedida');
    if (diferencaDeMedida > 0) {
      return Theme.of(context).highlightColor;
    } else if (diferencaDeMedida.toInt() < 0) {
      return Theme.of(context).errorColor;
    } else {
      return Theme.of(context).focusColor;
    }
  }

  String getMelhorFormaDeExibirNumero(double numero) {
    if (numero == numero.roundToDouble()) {
      return numero.ceil().toString();
    }
    return numero.toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 2,
          child: ContainerDeInfo(
            corDeFundo: getCorDaDiferencaDeMedida(diferencaDeMedida, context),
            comprimento: 242,
            altura: 288,
            conteudo: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                RichText(
                  text: TextSpan(
                    text: getMelhorFormaDeExibirNumero(diferencaDeMedida),
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
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Theme.of(context).canvasColor,
                  ),
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
                      text: getMelhorFormaDeExibirNumero(medida),
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
