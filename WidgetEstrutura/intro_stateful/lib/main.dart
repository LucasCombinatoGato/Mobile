import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp()
  ));
}

// Importando as características da página Stetaful
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // Método para identificar as mudanças de estado e chamar a reconstução da janela
  @override // Reescrita de um método existente
  State<MyApp> createState() => _MyAppState();
}


// Classe para construção da lógica e da estrutura da janela
class _MyAppState extends State<MyApp>
{
  // Classe normal da aplicação

  int contador = 0;

  // Método build da tela (método Obrigatório)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar - título do app

    appBar: AppBar(title: Text("Aplicativo com StateFul - Contador")),

    // Body
    // Container para espaçamento interno
    body: Padding(
      padding: EdgeInsets.all(8), // Espaçamento de 8 em todas as bordas
      // Container para centralizar os elementos no meio da Tela (esquerda e direita)
      child: Center( // |->e<-|
        // Column => Permite adicionar mais de um element
        child: Column(
          // Centraliza os elementos do eixo principal da Column [Y]
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nº de Click $contador", style: TextStyle(fontSize: 20)),
            // Adiciona um botão => Toda vez que for pressionado vai criar uma ação (Uma mudança de Estado)
            ElevatedButton(
              onPressed: (){
                // Adicionar setState (Mudança de Estado)
                setState(() {
                  // Colocar uma modificação na tela
                  contador++; // Adiciona 1 ao contador
                });
              },
              child: Text("Adicionar +1")
            ),
          ]
        ),
      )
      )
    );
  }
}