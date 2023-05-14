import 'package:flutter/material.dart';

/// Classe que controla a quantidade de meses que ainda não foram atualizados
/// com novas medidas.
class MesesAindaNaoPreenchidosController extends ChangeNotifier {
  List<DateTime> mesesAAtualizar = [];

  void setMesesAindaNaoPreenchidosController(DateTime dataDaUltimaAtualizacao) {
    mesesAAtualizar.clear();
    DateTime dataATestar = dataDaUltimaAtualizacao;
    DateTime agora = DateTime.now();

    while (dataATestar.isBefore(
      DateTime(agora.year, agora.month - 1, agora.day),
    )) {
      dataATestar = DateTime(
        dataATestar.year,
        dataATestar.month + 1,
        dataATestar.day,
      );

      mesesAAtualizar.add(dataATestar);
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
