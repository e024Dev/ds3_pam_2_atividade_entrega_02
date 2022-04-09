import 'package:flutter/material.dart';

class MiCardPage extends StatelessWidget {
  const MiCardPage({Key? key}) : super(key: key);

  // Variaveis de imagens externas
  final logoEtec =
      'https://venhaestudar.com.br/wp-content/uploads/2020/03/etec_prefeito_alberto_feres_s7_d0904a56a552f8b211ed76e9e2195f82.jpg';

  final imageUrl =
      'https://images.pexels.com/photos/10305334/pexels-photo-10305334.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';

  @override
  Widget build(BuildContext context) {
    final corPrimaria = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MiCard App'),
      ),
      body: Column(
        // A:teramos o espaçamento entre os Widgets adicionado espaço uniforme entre eles.
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          /* 
            O CircleAvatar facilita a criação de um Avatar Circular, 
            basta definirnos o radius e um image provider,
            nós utilizaremos o ImageNetwork que faz o download de um recurso externo de imagem. 
          */
          CircleAvatar(
            radius: 135,
            child: CircleAvatar(
              radius: 130,
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
          // O Divider, bem sugestivo, é um Widget que cria uma divisão simples na Column.
          Divider(
            height: 50,
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
          // Texto com estilização de cor, tamhao e peso.
          Text(
            'Ada Wong',
            style: TextStyle(
              color: corPrimaria,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Desenvolvimento de Sistemas',
            style: TextStyle(
              color: corPrimaria,
              fontSize: 36,
            ),
            textAlign: TextAlign.center,
          ),
          Divider(
            height: 50,
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text('adawong@etec.sp.gov.br'),
          ),
          // Desta vez utilizamos a propriedade leadind(esquerda) do ListTile para adicionar um icone
          const ListTile(
            leading: Icon(
              Icons.web,
            ),
            title: Text('albertoferes.com.br'),
          ),
          // Neste SizedBox fizemos o download do Logo do Alberto feres
          SizedBox(
            height: 100,
            child: Image.network(
              logoEtec,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
