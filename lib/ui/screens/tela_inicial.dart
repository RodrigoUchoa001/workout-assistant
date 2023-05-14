import 'package:flutter/material.dart';
import 'package:measure_tracker/db/banco_de_dados_metodos.dart';
import 'package:measure_tracker/db/collections/medidas_do_mes.dart';
import 'package:measure_tracker/ui/screens/tela_de_add_medidas_new.dart';
import 'package:measure_tracker/ui/widgets/container_de_exibicao_de_ultimas_medidas.dart';
import 'package:measure_tracker/ui/widgets/container_de_info.dart';
import 'package:measure_tracker/ui/widgets/conteudo_do_container_de_info_com_icone.dart';
import 'package:provider/provider.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) =>
                      TelaDeAddMedidasNew(dataPadrao: DateTime.now()),
                ),
              );
            },
            child: ContainerDeInfo(
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
          FutureBuilder(
            future: _getUltimaMedida(context),
            builder: (context, AsyncSnapshot<Widget> snapshot) {
              if (snapshot.hasData) {
                return snapshot.data!;
              }
              return const CircularProgressIndicator();
            },
          ),
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
    );
  }

  Future<Widget> _getUltimaMedida(BuildContext context) async {
    final provider = Provider.of<BancoDeDadosMetodos>(context);

    MedidasDoMes medidasDoMes = await provider.getUltimaMedidaDoMes();

    return ContainerDeExibicaoDeUltimasMedidas(
      medidaDoMes: medidasDoMes,
    );
  }
}
