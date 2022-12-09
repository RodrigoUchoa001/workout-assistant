import 'package:flutter/material.dart';
import 'package:measure_tracker/widgets/container_de_info.dart';
import 'package:measure_tracker/widgets/conteudo_do_container_de_info_com_icone.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: REMOVER O CENTER
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Text(
                'Olá Usuário!',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ContainerDeInfo(
              // INICIO DO CONTAINER DE INFO EXIBINDO MSG DE ATUALIZAR DADOS:
              // corDeFundo: Theme.of(context).focusColor,
              // conteudo: ConteudoDoContainerDeInfoComIcone(
              //   icone: Icons.edit,
              //   titulo: 'Chegou a hora de atualizar os dados!',
              //   subtitulo: '',
              //   acao: TextButton(
              //     onPressed: () {},
              //     child: const Text('Inserir novos dados'),
              //   ),
              // ),
              corDeFundo: Theme.of(context).primaryColor,
              conteudo: ConteudoDoContainerDeInfoComIcone(
                icone: Icons.notifications_none,
                titulo: 'Data da próxima atualização:',
                subtitulo: '6 de janeiro de 2023',
                acao: Text(
                  'Você será notificado em 3 dias.',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 14),
                ),
              ),
            ),
            //
            //
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Ultima atualização:'),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
            //
            //
            Container(
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
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
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
                              conteudo: Container(),
                              comprimento: 242,
                              altura: 290,
                            ),
                            ContainerDeInfo(
                              corDeFundo: Theme.of(context).primaryColor,
                              conteudo: Container(),
                              comprimento: 242,
                              altura: 220,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
