import 'package:flutter/material.dart';
import 'package:measure_tracker/ui/change_providers/pagina_exibida_provider.dart';
import 'package:measure_tracker/ui/screens/tela_de_medidas.dart';
import 'package:measure_tracker/ui/screens/tela_de_treinos.dart';
import 'package:measure_tracker/ui/screens/tela_inicial.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class TelaDaBottomNavBar extends StatelessWidget {
  const TelaDaBottomNavBar({super.key});

  static List<Widget> telasDoApp = [
    const TelaInicial(),
    TelaDeMedidas(),
    const TelaDeTreinos(),
  ];

  @override
  Widget build(BuildContext context) {
    final paginaExibidaProvider = Provider.of<PaginaExibidaProvider>(context);

    return SafeArea(
      child: Scaffold(
        body: telasDoApp.elementAt(paginaExibidaProvider.paginaExibida),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: SalomonBottomBar(
            currentIndex: paginaExibidaProvider.paginaExibida,
            onTap: (index) => paginaExibidaProvider.alteraPaginaExibida(index),
            // TODO: ESCOLHER UMA COR MELHOR PARA OS BOTOES DA NAVBAR
            selectedItemColor: Theme.of(context).focusColor,
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.home),
                title: const Text('Início'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.straighten),
                title: const Text('Medidas'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.fitness_center),
                title: const Text('Treinos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
