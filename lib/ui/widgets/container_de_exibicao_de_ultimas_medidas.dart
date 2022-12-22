import 'package:flutter/material.dart';
import 'package:measure_tracker/ui/widgets/container_de_exibicao_de_medida_e_diferenca.dart';

class ContainerDeExibicaoDeUltimasMedidas extends StatelessWidget {
  const ContainerDeExibicaoDeUltimasMedidas({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.history, size: 36),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Text(
                    '5 de dezembro de 2022',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 24,
                backgroundColor: Theme.of(context).canvasColor,
                child: Icon(
                  Icons.edit,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const ContainerDeExibicaoDeMedidaEDiferenca(
                parteDoCorpo: 'Braço Esq.',
                medida: 50,
                tipoDeMedida: 'cm',
                diferencaDeMedida: 5,
              );
            },
          ),
        ),
      ],
    );
  }
}
