import 'package:isar/isar.dart';
import 'package:measure_tracker/db/collections/medida.dart';

part 'medidas_do_mes.g.dart';

@Collection()
class MedidasDoMes {
  Id id = Isar.autoIncrement;

  // MedidasDoMes agr pode se relacionar com varias Medida
  final medidas = IsarLinks<Medida>();

  @Index()
  late DateTime dataDasMedidas;
}
