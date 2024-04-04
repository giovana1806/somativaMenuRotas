import 'package:flutter/material.dart';
import 'tela1.dart';
import 'imc.dart';
import 'contador.dart';
import 'cadastroProd.dart';
import 'cadastroUsu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas Nomeadas',
      initialRoute: '/',
      routes: { '/': (context) => const Tela1(),
        '/imc': (context) => const Imc(),
        '/contador': (context) => const Contador(),
        '/usuario': (context) => const CadastroUsuario(),
        '/produto': (context) => const CadastroProduto(),
      },
    );
  }
}