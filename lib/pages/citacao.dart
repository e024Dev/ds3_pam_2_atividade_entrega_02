import 'package:flutter/material.dart';

class CitacaoPage extends StatelessWidget {
  const CitacaoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Citação App'),
      ),
      body: const Center(
        child: Card(
          margin: EdgeInsets.all(32),
          child: ListTile(
            title: Text(
              '"Minhas coisas favoritas na vida não custam dinheiro. É muito claro que o recurso mais precioso que todos nós temos é o tempo".',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.justify,
            ),
            subtitle: Text('Steve Jobs'),
          ),
        ),
      ),
    );
  }
}
