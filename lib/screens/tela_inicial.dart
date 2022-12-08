import 'package:flutter/material.dart';
import 'package:measure_tracker/widgets/container_de_info.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Text(
                'Olá Usuário!',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const ContainerDeInfo(),
          ],
        ),
      ),
    );
  }
}
