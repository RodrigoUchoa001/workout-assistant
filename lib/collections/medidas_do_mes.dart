import 'package:isar/isar.dart';
import 'package:measure_tracker/collections/medida.dart';

@Collection()
class MedidasDoMes {
  Id id = Isar.autoIncrement;

  late List<Medida> medidas;

  @Index()
  late DateTime dataDasMedidas;
}
