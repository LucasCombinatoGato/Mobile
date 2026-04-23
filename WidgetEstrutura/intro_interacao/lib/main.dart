//Uso de Elementos de Interação ( TextField, ElevatedButton, CheckBox, Slider)

import 'package:flutter/material.dart';

import 'pages/contato_page.dart';
import 'pages/form_page.dart';
import 'pages/home_page.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    // Sistema de rotas para navegação entre telas
    // home (Tela inicial), Form: (Tela de formulário), contato (formulário de contato)
    routes: {
      "/": (context) => HomePage(),
      "/form": (context) => FormPage(),
      "/contato": (context) => ContatoPage(),
    },
    // Direcionar o aplicativo quando iniciar para a home
    initialRoute: "/",
  ));
}

// Página main finalizada
