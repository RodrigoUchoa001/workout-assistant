import 'package:flutter/material.dart';

class ContainerDeInfo extends StatelessWidget {
  const ContainerDeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(17),
      ),
    );
  }
}
