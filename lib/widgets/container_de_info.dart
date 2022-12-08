import 'package:flutter/material.dart';

class ContainerDeInfo extends StatelessWidget {
  const ContainerDeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.notifications_none,
              size: 48,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Data da próxima atualização:'),
                    Text(
                      '6 de janeiro de 2023',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Text(
                  'Você será notificado em 3 dias',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
