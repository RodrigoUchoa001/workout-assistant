import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:isar/isar.dart';
import 'package:measure_tracker/db/banco_de_dados_metodos.dart';
import 'package:measure_tracker/db/collections/medidas_do_mes.dart';
import 'package:measure_tracker/ui/change_providers/pagina_exibida_provider.dart';
import 'package:measure_tracker/ui/change_providers/tema_provider.dart';
import 'package:measure_tracker/ui/screens/tela_da_bottom_nav_bar.dart';
import 'package:measure_tracker/ui/screens/tela_de_add_medidas_new.dart';
import 'package:measure_tracker/utils/meses_ainda_nao_preenchidos_controller.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool? feitoPrimeiroCadastro;

void main() async {
  // pegando instância do bd isar, logo a frente é passado pro provider de
  // BancoDeDadosMetodos
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
    [MedidasDoMesSchema],
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
        Provider<BancoDeDadosMetodos>(create: (_) => BancoDeDadosMetodos(isar)),
        ChangeNotifierProvider(create: (_) => TemaProvider()),
        ChangeNotifierProvider(create: (_) => PaginaExibidaProvider()),
        ChangeNotifierProvider(
          create: (_) => MesesAindaNaoPreenchidosController(),
        ),
      ],
      builder: (context, child) {
        // pra funcionar o controller de meses ainda n preenchidos
        setUltimaDataAtualizada(context);

        return MaterialApp(
          title: 'Workout Assistant',
          debugShowCheckedModeBanner: false,
          theme: Temas.temaClaro,
          // darkTheme: Temas.temaEscuro,
          themeMode: Provider.of<TemaProvider>(context).modoDeTemaAtual,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          supportedLocales: const [Locale('pt', 'BR')],
          //home: TelaDeAddMedidasNew(dataPadrao: DateTime.now()),
          home: feitoPrimeiroCadastro == true
              ? const TelaDaBottomNavBar()
              : TelaDeAddMedidasNew(dataPadrao: DateTime.now()),
        );
      },
    );
  }

  void setUltimaDataAtualizada(BuildContext context) async {
    final providerMedidas = Provider.of<BancoDeDadosMetodos>(context);
    List<MedidasDoMes> medidasDoMes = await providerMedidas.getMedidasDoMes();

    final providerMesesAAtualizarController =
        Provider.of<MesesAindaNaoPreenchidosController>(context, listen: false);

    if (medidasDoMes.isNotEmpty) {
      providerMesesAAtualizarController.setMesesAindaNaoPreenchidosController(
          medidasDoMes[0].dataDasMedidas);
    }
  }
}
