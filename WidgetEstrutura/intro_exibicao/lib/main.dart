// Tela para estudo dos widgets de exibição
// text, image, icon entre outros

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
    // Configurações iniciais do App
    // Router -> rotas de navegação
    // Home -> Página inicial
    home: MyApp(),
    // themeApp -> (Claro/Escuro)
    ),
  ); // Gosot de colocar o MatrialApp no void main
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Estrutura da tela
  @override
  Widget build(BuildContext context) {
    return Scaffold (
    //Elemento principal da tela
    // appbar, drawer, bnbar, body, fabutton, sneakbar
      appBar: AppBar(title: Text("Exemplos de Widget de Exibição")),

      // Adicinar um elemento de Scroll

      body: SingleChildScrollView(
        // + Usado para scroll da tela inteira
        child: Padding(
          padding: EdgeInsets.all(16),
            // Widget de Text
            // Adicionar um container
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Explorando o Flutter",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold 
                ),
              ),
              // Dentro da column
              // Adicionar um image
              Image.network(
                //Link URL da Image
                "https://preview.redd.it/queria-a-vossa-sincera-opini%C3%A3o-acham-o-meu-c%C3%A3o-feio-v0-zqacx8xqnvld1.jpg?width=350&format=pjpg&auto=webp&s=5f3d6729771aef8587c6617c77ac8c04c74f7661",
                height: 400,
                fit: BoxFit.contain,),

                // Adicionar imagem local
                Image.asset("assets/img/tuna1.png",
                height: 250,
                fit: BoxFit.cover,)
            ],
          ),
        ),
      ),
    );
  }
}