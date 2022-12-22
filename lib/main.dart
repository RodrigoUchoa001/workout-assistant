import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:measure_tracker/collections/medida.dart';
import 'package:measure_tracker/collections/medidas_do_mes.dart';
import 'package:measure_tracker/ui/change_providers/pagina_exibida_provider.dart';
import 'package:measure_tracker/ui/change_providers/tema_provider.dart';
import 'package:measure_tracker/ui/screens/tela_da_bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
    [MedidaSchema, MedidasDoMesSchema],
    directory: dir.path,
  );

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
