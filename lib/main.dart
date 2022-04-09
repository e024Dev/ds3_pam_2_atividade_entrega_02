import 'package:ds3_pam_2_atividade_entrega_02/pages/citacao.dart';
import 'package:ds3_pam_2_atividade_entrega_02/pages/micard_page.dart';
import 'package:flutter/material.dart';

main() => runApp(const EntregaDois());

class EntregaDois extends StatelessWidget {
  const EntregaDois({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const CitacaoPage(),
    );
  }
}
