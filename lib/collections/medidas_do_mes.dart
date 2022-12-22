import 'package:isar/isar.dart';
import 'package:measure_tracker/collections/medida.dart';

@Collection()
class MedidasDoMes {
  Id id = Isar.autoIncrement;

  // MedidasDoMes agr pode se relacionar com varias Medida
  final medidas = IsarLinks<Medida>();

  @Index()
  late DateTime dataDasMedidas;
}