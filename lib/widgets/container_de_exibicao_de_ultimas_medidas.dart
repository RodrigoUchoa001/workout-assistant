import 'package:flutter/material.dart';
import 'package:measure_tracker/widgets/container_de_info.dart';

class ContainerDeExibicaoDeUltimasMedidas extends StatelessWidget {
  const ContainerDeExibicaoDeUltimasMedidas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
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
              const CircleAvatar(
                child: Icon(Icons.edit),
              ),
            ],
          ),
          SizedBox(
            height: 290,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    ContainerDeInfo(
                      corDeFundo: const Color(0xFF6FFF86),
                      comprimento: 242,
                      altura: 290,
                      conteudo: Container(),
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
                            children: const [
                              CircleAvatar(),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Text('Braço Esq.'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '50',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                'cm',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: Theme.of(context).disabledColor),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
