import 'package:isar/isar.dart';

part 'medida.g.dart';

@Collection()
class Medida {
  Id id = Isar.autoIncrement;

  @Index(unique: true, caseSensitive: false)
  late String tipo;

  late double valor;
  late String unidade;
}
