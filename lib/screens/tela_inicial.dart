import 'package:flutter/material.dart';
import 'package:measure_tracker/widgets/container_de_exibicao_de_ultimas_medidas.dart';
import 'package:measure_tracker/widgets/container_de_info.dart';
import 'package:measure_tracker/widgets/conteudo_do_container_de_info_com_icone.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  Text('Ultima atualização:'),
                ],
              ),
            ),
            const ContainerDeExibicaoDeUltimasMedidas(),
            //
            const SizedBox(height: 24),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  Text('Treinos de hoje:'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Text(
                'Em breve!',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
