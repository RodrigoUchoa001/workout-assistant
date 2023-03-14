// TODO: remover pacote jiffy
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

/// Classe que controla a quantidade de meses que ainda não foram atualizados
/// com novas medidas.
class MesesAindaNaoPreenchidosController extends ChangeNotifier {
  List<DateTime> mesesAAtualizar = [];

  void setMesesAindaNaoPreenchidosController(DateTime dataDaUltimaAtualizacao) {
    mesesAAtualizar.clear();
    DateTime dataATestar = dataDaUltimaAtualizacao;

    while (dataATestar.isBefore(DateTime.now())) {
      mesesAAtualizar.add(dataATestar);

      dataATestar = DateTime(
        dataATestar.year,
        dataATestar.month + 1,
        dataATestar.day,
      );
    }

    // pois queremos as datas na ordem decrescente
    notifyListeners();
  }

  // List<DateTime> get getMesesAAtualizar {
  //   if (mesesAAtualizar.isEmpty) {
  //     return [];
  //   } else {
  //     return mesesAAtualizar;
  //   }
  // }
}
