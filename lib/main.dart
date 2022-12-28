import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:isar/isar.dart';
import 'package:measure_tracker/db/banco_de_dados.dart';
import 'package:measure_tracker/db/collections/medida.dart';
import 'package:measure_tracker/db/collections/medidas_do_mes.dart';
import 'package:measure_tracker/models/msg_de_add_medida.dart';
import 'package:measure_tracker/ui/change_providers/pagina_exibida_provider.dart';
import 'package:measure_tracker/ui/change_providers/tema_provider.dart';
import 'package:measure_tracker/ui/screens/tela_da_bottom_nav_bar.dart';
import 'package:measure_tracker/ui/screens/tela_de_add_medida.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool? feitoPrimeiroCadastro;

void main() async {
  // pegando instância do bd isar, logo a frente é passado pro provider de
  // BancoDeDados
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
    [MedidaSchema, MedidasDoMesSchema],
    directory: dir.path,
  );

  // TODO: Se necessário, colocar prefs no provider.
  SharedPreferences prefs = await SharedPreferences.getInstance();
  feitoPrimeiroCadastro = prefs.getBool('feitoPrimeiroCadastro');

  runApp(MyApp(isar: isar));
}

class MyApp extends StatelessWidget {
  final Isar isar;
  const MyApp({super.key, required this.isar});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<BancoDeDados>(create: (_) => BancoDeDados(isar)),
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
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          supportedLocales: const [Locale('pt', 'BR')],
          // home: TelaDeAddMedida(msgsDeMedidas: msgDeMedidasInicial),
          home: feitoPrimeiroCadastro == true
              ? const TelaDaBottomNavBar()
              : TelaDeAddMedida(msgsDeMedidas: msgDeMedidasInicial),
        );
      },
    );
  }
}
