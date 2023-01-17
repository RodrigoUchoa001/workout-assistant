import 'package:isar/isar.dart';
import 'package:measure_tracker/db/collections/medida.dart';

part 'medidas_do_mes.g.dart';

@Collection()
class MedidasDoMes {
  Id id = Isar.autoIncrement;

  @Index()
  late DateTime dataDasMedidas;

  late Medida bracoEsquerdo;
  late Medida bracoDireito;
  late Medida peito;
  late Medida costas;
  late Medida barriga;
  late Medida cintura;
  late Medida bumbum;
  late Medida coxaEsquerda;
  late Medida coxaDireita;
  late Medida panturrilhaEsquerda;
  late Medida panturrilhaDireita;
  late Medida peso;
}
