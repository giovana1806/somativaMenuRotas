import 'package:flutter/material.dart';


class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MENU'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),

      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Icon(
                Icons.add_business_sharp,
                size: 120.0,
                color: Colors.pink,
              ),
              const Text(
                'Aplicação Principal',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                child: const Text('IMC'),
                onPressed: () {
                  Navigator.pushNamed(context, '/imc');
                },
              ),
              ElevatedButton(
                child: const Text('Contador'),
                onPressed: () {
                  Navigator.pushNamed(context, '/contador');
                },
              ),
              ElevatedButton(
                child: const Text('Cadastro Usuario'),
                onPressed: () {
                  Navigator.pushNamed(context, '/usuario');
                },
              ),
              ElevatedButton(
                child: const Text('Cadastro Produto'),
                onPressed: () {
                  Navigator.pushNamed(context, '/produto');
                },
              ),
            ]
          )
      ),
    );
  }
}