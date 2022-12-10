import 'package:flutter/material.dart';

class PaginaExibidaProvider extends ChangeNotifier {
  int paginaExibida = 0;

  void alteraPaginaExibida(int novaPagina) {
    paginaExibida = novaPagina;
    notifyListeners();
  }
}
