import 'package:flutter/material.dart';

/// Classe que controla a quantidade de meses que ainda não foram atualizados
/// com novas medidas.
class MesesAindaNaoPreenchidosController extends ChangeNotifier {
  List<DateTime> mesesAAtualizar = [];

  bool temUmMesDeDiferenca(DateTime data1, DateTime data2) {
    Duration diferenca = data2.difference(data1);

    // TODO: REMOVER DEBUGPRINT
    debugPrint("a diferenca foi de: $diferenca");

    if (diferenca.inDays < 30) {
      return false;
    }
    return true;
  }

  void setMesesAindaNaoPreenchidosController(DateTime dataDaUltimaAtualizacao) {
    mesesAAtualizar.clear();
    DateTime dataATestar = dataDaUltimaAtualizacao;

    while (temUmMesDeDiferenca(dataATestar, DateTime.now())) {
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
