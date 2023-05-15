import 'package:flutter/material.dart';
import 'package:measure_tracker/db/collections/medida.dart';
import 'package:measure_tracker/db/collections/medidas_do_mes.dart';
import 'package:measure_tracker/ui/widgets/container_de_exibicao_de_medida_e_diferenca.dart';
import 'package:measure_tracker/utils/formatador_de_data.dart';

class ContainerDeExibicaoDeUltimasMedidas extends StatelessWidget {
  final MedidasDoMes medidaDoMes;

  const ContainerDeExibicaoDeUltimasMedidas(
      {super.key, required this.medidaDoMes});

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
              const Icon(Icons.date_range, size: 32),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Text(
                    formatarData(medidaDoMes.dataDasMedidas),
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
        SizedBox(height: 300, child: _exibeCadaMedida()),
      ],
    );
  }

  _exibeCadaMedida() {
    List<Medida> medidas = [
      medidaDoMes.bracoEsquerdo,
      medidaDoMes.bracoDireito,
      medidaDoMes.peito,
      medidaDoMes.costas,
      medidaDoMes.barriga,
      medidaDoMes.cintura,
      medidaDoMes.bumbum,
      medidaDoMes.coxaEsquerda,
      medidaDoMes.coxaDireita,
      medidaDoMes.panturrilhaEsquerda,
      medidaDoMes.panturrilhaDireita,
      medidaDoMes.peso,
    ];

    return ListView.builder(
      itemCount: medidas.length,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ContainerDeExibicaoDeMedidaEDiferenca(
          parteDoCorpo: medidas[index].tipo,
          medida: medidas[index].valor,
          tipoDeMedida: medidas[index].unidade,
          diferencaDeMedida: 5,
        );
      },
    );
  }
}
