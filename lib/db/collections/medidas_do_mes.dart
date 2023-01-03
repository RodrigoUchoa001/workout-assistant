import 'package:isar/isar.dart';
import 'package:measure_tracker/db/collections/medida.dart';

part 'medidas_do_mes.g.dart';

@Collection()
class MedidasDoMes {
  Id id = Isar.autoIncrement;

  @Index()
  late DateTime dataDasMedidas;

  final medidas = IsarLinks<Medida>();
}
