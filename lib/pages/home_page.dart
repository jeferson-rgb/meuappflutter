import 'package:flutter/material.dart';

import '../service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Açoes do usuario"),
          Center(child: Text("Foi clicado $quantidadeCliques vezes")),
          Center(child: Text(" O numero gerado foi: $numeroGerado ")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              quantidadeCliques = quantidadeCliques + 1;
              numeroGerado =
                  GeradorNumeroAleatorioService.gerarNumeroAleatorio(1000);
            });
          }),
    );
  }
}
