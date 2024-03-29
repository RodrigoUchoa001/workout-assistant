import 'package:flutter/material.dart';

class MsgDeAddMedida {
  String msg;
  String unidadeDeMedida;
  bool precisaDoSeletorDeData;
  TextInputType inputType;

  MsgDeAddMedida(this.msg, this.unidadeDeMedida,
      {this.precisaDoSeletorDeData = false,
      this.inputType = TextInputType.number});
}

///  Mensagens que devem aparecer quando o usuário inserir medidas ao entrar no
/// app pela primeira vez.
List<MsgDeAddMedida> msgDeMedidasInicial = [
  MsgDeAddMedida("Qual o seu nome?", "", inputType: TextInputType.name),
  MsgDeAddMedida(
    "Em que data começam os registros?",
    "",
    precisaDoSeletorDeData: true,
  ),
];

/// Mensagens que devem aparecer quando o usuário inserir medidas em um momento
/// comum no app. Não na primeira vez q entrar no app.
List<MsgDeAddMedida> msgDeMedidasDeCadaMes = [
  MsgDeAddMedida(
    "Em que data foi feito o registro?",
    "",
    precisaDoSeletorDeData: true,
  ),
  MsgDeAddMedida("Qual a medida do seu braço esquerdo?", "cm"),
  MsgDeAddMedida("Qual a medida do seu braço direito?", "cm"),
  MsgDeAddMedida("Qual a medida do seu peito?", "cm"),
  MsgDeAddMedida("Qual a medida das suas costas?", "cm"),
  MsgDeAddMedida("Qual a medida da sua barriga?", "cm"),
  MsgDeAddMedida("Qual a medida da sua cintura?", "cm"),
  MsgDeAddMedida("Qual a medida do seu bumbum?", "cm"),
  MsgDeAddMedida("Qual a medida da sua coxa esquerda?", "cm"),
  MsgDeAddMedida("Qual a medida da sua coxa direita?", "cm"),
  MsgDeAddMedida("Qual a medida da sua panturrilha esquerda?", "cm"),
  MsgDeAddMedida("Qual a medida da sua panturrilha direita?", "cm"),
  MsgDeAddMedida("E por último, qual o seu peso?", "kg"),
];
