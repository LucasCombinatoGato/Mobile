//página de formulário
//tela com elementos de formulário para interação do usuário
//textField
//checkBox
//radio button
//slider // barra de seleção
//switch=> botão de alternância
//dropdown => menu suspenso

//form => ajuda na validação de dados

import 'package:flutter/material.dart';
import 'package:intro_interacao/widgets/bnb.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

// Lógica de construção da tela
class _FormPageState extends State<FormPage> {
  
  // Atributos
  String _nome = "";
  String _email = "";
  String _senha = "";
  String _confirmarSenha = "";
  bool _aceitarTermos = false; // Switch dos termos
  String _sexo = "Feminino"; // Radio (feminino)
  double _idade = 18; // Slider -> posição 18
  List<String> _interesses = [];
  String _cidade = "Americana";
  // Esconder senha
  bool _obscureSenha = true;

  // Chave global de valisação do formulário
  final formKey = GlobalKey<FormState>(); // formulário somente será enviado se a chave estiver validada


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formulário de Cadastro"),),
      body: Padding(
        padding: EdgeInsets.all(8),
        // Adicionar elemento e fazer a verificação
        child: Form(
          key: formKey, // Chave de validação para o form
          child: SingleChildScrollView(
            child: Column(
              children:[
                // Campo de texto para nome
                TextFormField(
                  decoration: InputDecoration(labelText: "Digite seu Nome...", border: OutlineInputBorder()),
                  onChanged: (value) => setState(() {
                    _nome = value;}),
                    validator: (value) => value!.isEmpty ? "Campo Obrigatório": null,
                  ),
                // Campo email
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(labelText: "Digite seu E-mail...", border: OutlineInputBorder()),
                  onChanged: (value) => setState(() {_email = value;}),
                  validator: (value) => value!.contains("@") ? null : "Email Inválido",
                ),

                // Campo senha
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Digite sua Senha...", 
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () => setState(() {
                        _obscureSenha = !_obscureSenha; // Inverter o valor para a booleana
                      }),
                      icon: Icon(_obscureSenha ? Icons.visibility : Icons.visibility_off))),
                  onChanged: (value) => setState(() {_senha = value;}),
                  validator:(value) => value!.length <= 6 ? "Senha deve ser maior que 6 catacteres" : null,
                  obscureText: _obscureSenha,// Esconder senha 
                ),


                // Campo confirmar senha
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Confirme sua senha...",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () => setState(() {_obscureSenha = !_obscureSenha;}),
                      icon: Icon(_obscureSenha ? Icons.visibility : Icons.visibility_off,)
                    ),
                  ),
                  onChanged: (value) => setState(() {
                    _confirmarSenha = value;}),
                    validator: (value) => value! != _senha ? "As senhas não correspondem" : null,
                  obscureText: _obscureSenha,
                ),
                //radio button => sexo
                SizedBox(height: 20,),
                //forma antiga
                // Row(children: [
                //   Text("Sexo:"),
                //   SizedBox(width: 5,),
                //   Radio(
                //     value: "Feminino",
                //     groupValue: _sexo,
                //     onChanged: (value) => setState(()=>_sexo = value!),
                //   ),
                //   Text("Feminino"),
                //   SizedBox(width: 5,),
                //   Radio(
                //     value: "Masculino",
                //     groupValue: _sexo,
                //     onChanged: (value) => setState(()=>_sexo = value!),
                //   ),
                //   Text("Masculino"),
                //   SizedBox(width: 5,),
                //   Radio(
                //     value: "Outro",
                //     groupValue: _sexo,
                //     onChanged: (value) => setState(()=>_sexo = value!),
                //   ),
                //   Text("Outro"),
                // ],),
                //Radio Versão Nova 
                //RadioGroup
                RadioGroup<String>(
                  groupValue: _sexo,
                  onChanged: (String? value)=> setState(()=> _sexo = value!), 
                  child: Row(
                    children: [
                      Text("Sexo:"),
                      SizedBox(width: 5,),
                      Radio(value: "Feminino"),
                      Text("Feminino"),
                      SizedBox(width: 5,),
                      Radio(value: "Masculino"),
                      Text("Masculino"),
                      SizedBox(width: 5,),
                      Radio(value: "Outro"),
                      Text("Outro"),
                      SizedBox(width: 5,)
                    ],
                  )
                ),
                //Slider para seleção da idade
                //-------------------------------------------- 
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("Idade: ${_idade.toInt()}"), // Exibir a idade selecionada
                    Expanded(child: Slider(
                      value: _idade,
                      onChanged: (value) => setState(() => _idade = value,),
                      min: 0, // Valor mínimo do slider
                      max: 100, // Valor máximo do slider
                      divisions: 100, // Nº de divisões do slider
                      label: _idade.toInt().toString(),
                    ))
                  ],
                ),
                //CheckBox para selecionar interesses
                SizedBox(height: 20,),
                Column(children: [
                  Text("Interesses Pessoais:"),
                  Row(
                    children: [
                      //Cinema
                      Checkbox(value: _interesses.contains("Cinema"),
                      onChanged: (bool? value) => setState(() {
                        value! ? _interesses.add("Cinema") : _interesses.remove("Cinema");
                      })),
                      Text("Cinema"),
                      SizedBox(width: 5,),

                      //Teatro
                      Checkbox(value: _interesses.contains("Teatro"),
                      onChanged: (bool? value) => setState(() {
                        value! ? _interesses.add("Teatro") : _interesses.remove("Teatro");
                      })),
                      Text("Teatro"),
                      SizedBox(width: 5,),
                    
                      //Esporte
                      Checkbox(value: _interesses.contains("Esporte"),
                      onChanged: (bool? value) => setState(() {
                        value! ? _interesses.add("Esporte") : _interesses.remove("Esporte");
                      })),
                      Text("Esporte"),
                      SizedBox(width: 5,),
                    ],
                  ),
                  Row(
                    children: [
                      //Música
                      Checkbox(value: _interesses.contains("Música"),
                      onChanged: (bool? value) => setState(() {
                        value! ? _interesses.add("Música") : _interesses.remove("Música");
                      })),
                      Text("Música"),
                      SizedBox(width: 5,),

                      //Jogos
                      Checkbox(value: _interesses.contains("Jogos"),
                      onChanged: (bool? value) => setState(() {
                        value! ? _interesses.add("Jogos") : _interesses.remove("Jogos");
                      })),
                      Text("Jogos"),
                      SizedBox(width: 5,),
                    
                      //Viagens
                      Checkbox(value: _interesses.contains("Viagens"),
                      onChanged: (bool? value) => setState(() {
                        value! ? _interesses.add("Viagens") : _interesses.remove("Viagens");
                      })),
                      Text("Viagens"),
                      SizedBox(width: 5,),
                    ],
                  ),
                ],),
                // DropDown Cidades
                SizedBox(height: 20,),
                Text("Cidade"),
                DropdownButtonFormField(
                  decoration: InputDecoration(border: OutlineInputBorder()),

                // USANDO UMA FORMA COMPLEXA
                  // items: [
                  //   DropdownMenuItem(child: Text("Americana"),
                  //   value: "Americana"),
                  //   DropdownMenuItem(child: Text("Campinas"),
                  //   value: "Campinas"),
                  //   DropdownMenuItem(child: Text("Jararaquara"),
                  //   value: "Jararaquara"),
                  //   DropdownMenuItem(child: Text("Santa Bárbara d'Oeste"),
                  //   value: "Santa Bárbara d'Oeste"),
                  //   DropdownMenuItem(child: Text("Piracicaba"),
                  //   value: "Piracicaba"),
                  //   DropdownMenuItem(child: Text("Nova Odessa"),
                  //   value: "Nova Odessa"),
                  //   DropdownMenuItem(child: Text("Outra"),
                  //   value: "Outra"),
                  // ],


                // USANDO MAP
                  items: ["Americana", "Campinas", "Nova Odessa", "Santa Bárbara d'Oeste", "Sumaré", "Piracicaba", "Outra"].map(
                  (cidade) => DropdownMenuItem(child: Text (cidade), value: cidade)
                  ).toList(),
                onChanged: (value) => setState(() => _cidade = value!,)),
                // Switch para aceitar os termos de uso
                Row(children: [
                  Switch(value: _aceitarTermos, onChanged: (bool value) => setState(() => _aceitarTermos = value,)),
                  Text("Aceitar os Termos de Uso")
                ],),
                // Botão de Enviar o Formulário
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: ()=> _enviarFormulario(),
                  child: Text("Enviar Formulário"))
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Bnb(context),
    );
  }

  void _enviarFormulario() {
    // Verificar os termos do formulário (validação)
    // Mostrar um AlertDialog (modal de alerta)
    if (formKey.currentState!.validate() && _aceitarTermos) {
      showDialog(context: context, builder: (context) => AlertDialog(
        title: Text("Dados do Formulário"),
        content: SingleChildScrollView(
          // Permite a rolagem do modal
          child: ListBody(
            children: [
              Text("Nome:  $_nome"),
              Text("Email:  $_email"),
              Text("Senha:  $_senha"),
              Text("Sexo:  $_sexo"),
              Text("Idade:  ${_idade.toInt()}"),
              Text("Interesses:  ${_interesses.join(", ")}"),
              Text("Cidade:  $_cidade"),
            ],
          )
        ),
        actions: [
          ElevatedButton(
            onPressed: (){
              // Sem o arrow function para fazer várias ações
              // Limpar as respostas
              setState(() {
                _nome = "";
                _email = "";
                _senha = "";
                _confirmarSenha = "";
                _sexo = "Feminino";
                _idade = 18;
                _interesses = [];
                _cidade = "Americana";
                _aceitarTermos = false;
                formKey.currentState!.reset(); // Reseta a validação do formulário
              });
              Navigator.popAndPushNamed(context, "/");
          },
          child: Text("Ok"))
        ],
      ));
    } 
  }
}