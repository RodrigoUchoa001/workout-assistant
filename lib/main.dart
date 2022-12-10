import 'package:flutter/material.dart';
import 'package:measure_tracker/change_providers/pagina_exibida_provider.dart';
import 'package:measure_tracker/change_providers/tema_provider.dart';
import 'package:measure_tracker/screens/tela_da_bottom_nav_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TemaProvider()),
        ChangeNotifierProvider(create: (_) => PaginaExibidaProvider()),
      ],
      builder: (context, child) {
        return MaterialApp(
          title: 'Workout Assistant',
          debugShowCheckedModeBanner: false,
          theme: Temas.temaClaro,
          // darkTheme: Temas.temaEscuro,
          themeMode: Provider.of<TemaProvider>(context).modoDeTemaAtual,
          home: const TelaDaBottomNavBar(),
        );
      },
    );
  }
}
