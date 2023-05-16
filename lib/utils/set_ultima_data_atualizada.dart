import 'package:flutter/material.dart';
import 'package:measure_tracker/db/banco_de_dados_metodos.dart';
import 'package:measure_tracker/db/collections/medidas_do_mes.dart';
import 'package:measure_tracker/utils/meses_ainda_nao_preenchidos_controller.dart';
import 'package:provider/provider.dart';

void setUltimaDataAtualizada(BuildContext context) async {
  final providerMedidas =
      Provider.of<BancoDeDadosMetodos>(context, listen: false);
  List<MedidasDoMes> medidasDoMes = await providerMedidas.getMedidasDoMes();

  final providerMesesAAtualizarController =
      Provider.of<MesesAindaNaoPreenchidosController>(context, listen: false);

  if (medidasDoMes.isNotEmpty) {
    providerMesesAAtualizarController
        .setMesesAindaNaoPreenchidosController(medidasDoMes[0].dataDasMedidas);
  }
}
