//Criar o void main
//Resposável por rodar o elemento principal da aplicação

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  //runApp = chama ao elemento com o materialAPP
  runApp(MainApp());

}


//Criar a classe MainApp
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  //Construtor da Tela estático
  @override
  Widget build(BuildContext context) {
    //montar a estrutura do MaterialAPP
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Tela de Login"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [  //Permite mais de 1, abre colchetes portanto
              //elementos de input de texto
              Text("Email"),
              TextField(textAlign: TextAlign.center,),
              Text("Senha"),
              TextField(textAlign: TextAlign.center,obscureText: true),
              TextButton(onPressed: (){}, child: Text("Enviar"))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: //Permite mais de 1, abre colchetes portanto
          [
            BottomNavigationBarItem(icon: Icon(Icons.arrow_back),label: "Voltar"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.arrow_forward), label: "forward"),
          ]
          ),
      ),
    );
  }
}