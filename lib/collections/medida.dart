import 'package:isar/isar.dart';

@Collection()
class Medida {
  Id id = Isar.autoIncrement;

  @Index(unique: true, caseSensitive: false)
  late String tipoDeMedida;

  late double valorDaMedida;
  late String unidadeDaMedida;
}
