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

  // Future<Isar> getInstanciaDoBd() async {
  //   final dir = await getApplicationSupportDirectory();
  //   final isar = await Isar.open(
  //     [MedidaSchema, MedidasDoMesSchema],
  //     directory: dir.path,
  //   );
  //   BancoDeDadosMetodos(isar);
  //   return isar;
  // }

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
    debugPrint('deu certo add no bd');
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
}
