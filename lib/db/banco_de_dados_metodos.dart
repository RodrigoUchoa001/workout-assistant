import 'package:isar/isar.dart';
// import 'package:measure_tracker/db/collections/medida.dart';
// import 'package:measure_tracker/db/collections/medidas_do_mes.dart';
// import 'package:path_provider/path_provider.dart';

class BancoDeDadosMetodos {
  Isar isar;
  BancoDeDadosMetodos(this.isar);

  // Future<Isar> getInstanciaDoBd() async {
  //   final dir = await getApplicationSupportDirectory();
  //   final isar = await Isar.open(
  //     [MedidaSchema, MedidasDoMesSchema],
  //     directory: dir.path,
  //   );
  //   BancoDeDadosMetodos(isar);
  //   return isar;
  // }

  void adicionarMedida() {}
}
