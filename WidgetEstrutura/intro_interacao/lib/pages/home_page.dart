// Tela inicial
// Vai ter botões de navegação para outras telas

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meu aplicativo Interativo"),),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          // Centraliza elementos na horizontal
          child: Column(
            // Alinhamento do eixo vertical
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo do aplicativo
              Image.network("https://i.imgur.com/PXMs8Pw.gif",
              width: 150,
              height: 150,),
              // Bloco de espaçamento
              SizedBox(height: 20,),
              // Botões de navegação
              ElevatedButton(
                onPressed: ()=> Navigator.pushNamed(context, "/form"),
                child: Text("Responder Formulário")),
              SizedBox(height: 20,),
              // Botões de navegação
              ElevatedButton(
                onPressed: ()=> Navigator.pushNamed(context, "/contato"),
                child: Text("Entre em contato")),
            ],
            )
        ),
        )
    );
  }
}