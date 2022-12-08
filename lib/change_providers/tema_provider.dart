import 'package:flutter/material.dart';

class TemaProvider extends ChangeNotifier {
  ThemeMode modoDeTemaAtual = ThemeMode.light;

  bool get eTemaEscuro => modoDeTemaAtual == ThemeMode.dark;

  void alterarTema(bool eTemaEscuro) {
    modoDeTemaAtual = eTemaEscuro ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class Temas {
  static final temaClaro = ThemeData(
    colorScheme: const ColorScheme.light(),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    primaryColor: const Color(0xFFFEFFB9),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
