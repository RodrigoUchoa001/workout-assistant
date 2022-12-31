import 'package:isar/isar.dart';
import 'package:measure_tracker/db/collections/medidas_do_mes.dart';

part 'medida.g.dart';

@Collection()
class Medida {
  Id id = Isar.autoIncrement;

  @Index(unique: true, caseSensitive: false)
  late String tipoDeMedida;

  late double valorDaMedida;
  late String unidadeDaMedida;
  late String dataDaMedida;

  final mesDaMedida = IsarLink<MedidasDoMes>();
}
