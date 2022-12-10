import 'package:flutter/material.dart';
import 'package:measure_tracker/widgets/container_de_exibicao_de_ultimas_medidas.dart';

class TelaDeMedidas extends StatelessWidget {
  const TelaDeMedidas({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Text(
              'Medidas',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: const [
                  ContainerDeExibicaoDeUltimasMedidas(),
                  SizedBox(height: 24),
                ],
              );
            },
          ),
          Column(
            children: const [
              Icon(Icons.done, size: 64),
              Text('Fim dos registros!'),
            ],
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
