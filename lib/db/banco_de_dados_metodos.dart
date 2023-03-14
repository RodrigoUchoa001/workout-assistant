// import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:measure_tracker/db/collections/medidas_do_mes.dart';

class BancoDeDadosMetodos {
  Isar isar;
  BancoDeDadosMetodos(this.isar);

  /// a lista que vem no parametro virá na seguinte ordem:
  /// [data, braço esq, braço dir, peito, costas, barriga, cintura, bumbum,
  /// coxa esq, coxa dir, panturrilha esq, panturrilha dir, peso]
  void addMedidas(MedidasDoMes medidas) async {
    await isar.writeTxn(() async {
      await isar.medidasDoMes.put(medidas);
    });
  }

  // MÉTODOS DE GET
  //
  // TODO: Se possível, encontrar forma de funcionar no computador
  Future<List<MedidasDoMes>> getMedidasDoMes() async {
    // final getMedidasDoMes = await isar.medidasDoMes.where().findAll();
    // return getMedidasDoMes;
    final medidasDoMes =
        await isar.medidasDoMes.where().sortByDataDasMedidasDesc().findAll();
    return medidasDoMes;
  }

  // getMedidas(MedidasDoMes medidasDoMes) async {
  //   final getMedidas = await isar.medidas
  //       .filter()
  //       .dataDaMedidaEqualTo(medidasDoMes.dataDasMedidas)
  //       .findAll();
  //   return getMedidas;
  // }
}
