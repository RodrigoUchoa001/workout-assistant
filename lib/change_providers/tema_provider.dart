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
    highlightColor: const Color(0xFF6FFF86),
    errorColor: const Color(0xFFFF6F6F),
    focusColor: const Color(0xFF799FFF),
    disabledColor: const Color(0xFF646464),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Inter',
        fontSize: 72,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
