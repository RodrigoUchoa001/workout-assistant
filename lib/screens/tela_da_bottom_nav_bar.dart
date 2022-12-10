import 'package:flutter/material.dart';
import 'package:measure_tracker/change_providers/pagina_exibida_provider.dart';
import 'package:measure_tracker/screens/tela_inicial.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class TelaDaBottomNavBar extends StatelessWidget {
  const TelaDaBottomNavBar({super.key});

  static const List<Widget> telasDoApp = [
    TelaInicial(),
    Text('Medidas'),
    Text('Treinos'),
  ];

  @override
  Widget build(BuildContext context) {
    final paginaExibidaProvider = Provider.of<PaginaExibidaProvider>(context);

    return Scaffold(
      body: telasDoApp.elementAt(paginaExibidaProvider.paginaExibida),
      bottomNavigationBar: SalomonBottomBar(
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
    );
  }
}
