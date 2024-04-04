import 'package:flutter/material.dart';

class CadastroProduto extends StatefulWidget {
  const CadastroProduto({super.key});

  @override
  State<CadastroProduto> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<CadastroProduto> {
  TextEditingController codigoController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  TextEditingController precoController = TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _cadastro(){
    setState(() {
      String codigo = codigoController.text;
      String descricao = descricaoController.text;
      String preco = precoController.text;

      if(codigo == "" || descricao == "" || preco == ""){
        _textoInfo = "Informe corretamente os dados";
      }
      else{
        codigoController.text = "";
        descricaoController.text = "";
        precoController.text = "";
        _textoInfo = "Produto cadastrado com sucesso";
      }
    });
  }

  void _limpar_tela(){
    codigoController.text = "";
    descricaoController.text = "";
    precoController.text = "";
    setState(() {
      _textoInfo = "Informe os dados";
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Produto"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
              onPressed: _limpar_tela,
              icon: Icon(Icons.refresh)
          )
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.shopping_bag,
              size: 120.0,
              color: Colors.green,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Codigo",
                  labelStyle: TextStyle(color: Colors.black45)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: codigoController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Descrição",
                  labelStyle: TextStyle(color: Colors.black45)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: descricaoController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Preco",
                  labelStyle: TextStyle(color: Colors.black45)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: precoController,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: SizedBox(
                    height: 50.0,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            textStyle: TextStyle(
                              fontSize: 25.5,
                            )
                        ),
                        onPressed: _cadastro,
                        child: const Text("Cadastrar")
                    )
                )
            ),
            Text(
                _textoInfo,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25.0
                )
            )
          ],
        ),
      ),
    );
  }
}