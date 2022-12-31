import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:measure_tracker/db/collections/medida.dart';
import 'package:measure_tracker/db/collections/medidas_do_mes.dart';
import 'package:measure_tracker/models/msg_de_add_medida.dart';
// import 'package:measure_tracker/db/collections/medida.dart';
// import 'package:measure_tracker/db/collections/medidas_do_mes.dart';
// import 'package:path_provider/path_provider.dart';

class BancoDeDadosMetodos {
  Isar isar;
  BancoDeDadosMetodos(this.isar);

  /// a lista que vem no parametro virá na seguinte ordem:
  /// [data, braço esq, braço dir, peito, costas, barriga, cintura, bumbum,
  /// coxa esq, coxa dir, panturrilha esq, panturrilha dir, peso]
  void addCadaMedida(List<TextEditingController> controllers) async {
    List<String> tiposDeMedida = [
      'Braço Esquerdo',
      'Braço Direito',
      'Peito',
      'Costas',
      'Barriga',
      'Cintura',
      'Bumbum',
      'Coxa Esquerda',
      'Coxa Direita',
      'Panturrilha Esquerda',
      'Panturrilha Direita',
      'Peso',
    ];

    addMedidasDoMes(controllers[0].text); //adicionou o mes da medida

    for (int i = 1; i < controllers.length; i++) {
      addMedida(
        Medida()
          ..dataDaMedida = controllers[0].text
          ..tipoDeMedida = tiposDeMedida[i - 1]
          ..valorDaMedida = double.parse(controllers[i].text)
          ..unidadeDaMedida = msgDeMedidasDeCadaMes[i].unidadeDeMedida
          ..mesDaMedida.value = medidasDoMesDaVez,
      );
    }
  }

  late MedidasDoMes medidasDoMesDaVez;
  void addMedidasDoMes(String data) async {
    final novasMedidasDoMes = MedidasDoMes()..dataDasMedidas = data;
    medidasDoMesDaVez = novasMedidasDoMes;

    await isar.writeTxn(() async {
      await isar.medidasDoMes.put(novasMedidasDoMes);
    });
  }

  /// inserir medida individualmente
  void addMedida(Medida medida) async {
    await isar.writeTxn(
      () async {
        await isar.medidas.put(medida);
      },
    );
  }

  getMedidasDoMes() async {
    final getMedidasDoMes = await isar.medidasDoMes.where().findAll();
    return getMedidasDoMes;
  }

  getMedidas(MedidasDoMes medidasDoMes) async {
    final getMedidas = await isar.medidas
        .filter()
        .dataDaMedidaEqualTo(medidasDoMes.dataDasMedidas)
        .findAll();
    return getMedidas;
  }
}
