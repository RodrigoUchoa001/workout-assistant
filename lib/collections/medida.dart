import 'package:isar/isar.dart';

part 'medida.g.dart';

@Collection()
class Medida {
  Id id = Isar.autoIncrement;

  @Index(unique: true, caseSensitive: false)
  late String tipoDeMedida;

  late double valorDaMedida;
  late String unidadeDaMedida;
  late DateTime dataDaMedida;
}
