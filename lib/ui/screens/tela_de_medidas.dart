import 'package:flutter/material.dart';
import 'package:measure_tracker/db/banco_de_dados_metodos.dart';
import 'package:measure_tracker/db/collections/medidas_do_mes.dart';
import 'package:measure_tracker/ui/screens/tela_de_add_medidas_new.dart';
import 'package:measure_tracker/ui/widgets/container_de_exibicao_de_ultimas_medidas.dart';
import 'package:measure_tracker/ui/widgets/container_de_info.dart';
import 'package:measure_tracker/ui/widgets/conteudo_do_container_de_info_com_icone.dart';
import 'package:measure_tracker/utils/get_mes_a_preencher.dart';
import 'package:measure_tracker/utils/meses_ainda_nao_preenchidos_controller.dart';
import 'package:measure_tracker/utils/set_ultima_data_atualizada.dart';
import 'package:provider/provider.dart';

class TelaDeMedidas extends StatefulWidget {
  const TelaDeMedidas({super.key});

  @override
  State<TelaDeMedidas> createState() => _TelaDeMedidasState();
}

class _TelaDeMedidasState extends State<TelaDeMedidas> {
  // List<Widget> meses = [];

  @override
  Widget build(BuildContext context) {
    // TODO: fazer com q o botão de atualizar medidas se atualize ao entrar na tela
    setUltimaDataAtualizada(context);

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
          //
          getMesAPreencher(context),
          //
          FutureBuilder(
            future: _getListaDeMedidas(context),
            builder: (context, AsyncSnapshot<Widget> snapshot) {
              if (snapshot.hasData) {
                return snapshot.data!;
              }
              return const CircularProgressIndicator();
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

  Future<Widget> _getListaDeMedidas(BuildContext context) async {
    final provider = Provider.of<BancoDeDadosMetodos>(context);

    List<MedidasDoMes> medidasDoMes = await provider.getMedidasDoMes();

    // // passando a data da ultima atualizacao de medidas para fazer o calculo de quantos meses faltam
    // // mesesAPreencherController =
    // final mesesAPreencherController =
    //     Provider.of<MesesAindaNaoPreenchidosController>(context, listen: false);

    // mesesAPreencherController
    //     .setMesesAindaNaoPreenchidosController(medidasDoMes[0].dataDasMedidas);

    return ListView.builder(
      itemCount: medidasDoMes.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          children: [
            ContainerDeExibicaoDeUltimasMedidas(
              medidaDoMes: medidasDoMes[index],
            ),
            const SizedBox(height: 24),
          ],
        );
      },
    );
  }
}
