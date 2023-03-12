import 'package:intl/intl.dart';

// formata a data para exibir data e hora certo
String formatarDataEHora(DateTime data) {
  String diaFormatado = formatarNumero(data.day);
  String mesFormatado = formatarNumero(data.month);
  String anoFormatado = formatarNumero(data.year);

  String dataFormatada = '$diaFormatado/$mesFormatado/$anoFormatado';

  String horaFormatada = DateFormat.jm().format(data);
  return '$dataFormatada $horaFormatada';
}

/// formata numero para aparecer no minimo dois digitos
String formatarNumero(int numero) {
  NumberFormat formatador = NumberFormat("00");
  return formatador.format(numero);
}
