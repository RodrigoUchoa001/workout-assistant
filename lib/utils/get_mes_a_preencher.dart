import 'package:flutter/material.dart';
import 'package:measure_tracker/ui/screens/tela_de_add_medidas_new.dart';
import 'package:measure_tracker/ui/widgets/container_de_info.dart';
import 'package:measure_tracker/ui/widgets/conteudo_do_container_de_info_com_icone.dart';
import 'package:measure_tracker/utils/meses_ainda_nao_preenchidos_controller.dart';
import 'package:provider/provider.dart';

Widget getMesAPreencher(BuildContext context) {
  final mesesAPreencherController =
      Provider.of<MesesAindaNaoPreenchidosController>(context, listen: false);

  debugPrint('${mesesAPreencherController.mesesAAtualizar}');

  // testa se n tem meses a atualizar
  if (mesesAPreencherController.mesesAAtualizar == null) {
    return Container();
  }

  DateTime mesAPreencher = mesesAPreencherController.mesesAAtualizar![0];

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: ContainerDeInfo(
      altura: 120,
      corDeFundo: Theme.of(context).focusColor,
      conteudo: ConteudoDoContainerDeInfoComIcone(
        icone: Icons.edit,
        titulo: 'Este mês ainda não foi atualizado:',
        subtitulo: '${mesAPreencher.month}/${mesAPreencher.year}',
        acao: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    TelaDeAddMedidasNew(dataPadrao: mesAPreencher),
              ),
            );
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
          ),
          child: const Text(
            'Inserir novos dados desse mês',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
