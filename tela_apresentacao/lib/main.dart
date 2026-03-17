import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: PerfilApp(),
      debugShowCheckedModeBanner: false,
    ));

class PerfilApp extends StatelessWidget {
  const PerfilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,



      // 1. APPBAR CUSTOMIZADO
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(10, 126, 209, 100), // Azul exato da imagem
        elevation: 0,
        toolbarHeight: 80,
        leading: UnconstrainedBox( // Mantém o botão no tamanho original
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(54, 171, 255, 100),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(Icons.arrow_back, color: Colors.black, size: 28),
          ),
        ),
        title: const Text(
          "PERFIL",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400, letterSpacing: 1.5),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.settings, color: Colors.black, size: 35),
          SizedBox(width: 20),
        ],
      ),
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // 2. SEÇÃO DO AVATAR
            Row(
              children: [
                const CircleAvatar(
                  radius: 55,
                  backgroundColor: Color.fromRGBO(54, 171, 255, 100),
                  child: Icon(Icons.person, size: 80, color: Colors.black87),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Integer eu convallis", 
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      Text("Nam lacinia aliquet bibendum. Donec enim eros, pretium quis hendrerit.",
                        style: TextStyle(fontSize: 14, color: Colors.black54)),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),

            // 3. CARDS DE EXPERIÊNCIA (GRADIENTE DE AZUL)
            _buildExperienciaCard("Professor de Desenvolvimento de Sistemas", "60 months", const Color.fromRGBO(20, 84, 195, 100)),
            _buildExperienciaCard("Técnico em EletroEletrônica", "5.8 months", const Color.fromRGBO(10, 126, 209, 100)),
            _buildExperienciaCard("Professor de Desenvolvimento de Sistemas", "24.1 months", const Color.fromRGBO(54, 171, 255, 100)),

            const SizedBox(height: 20),

            // 4. BOX DE INFORMAÇÕES
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1282D3),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 10, offset: const Offset(0, 5))
                ],
              ),
              child: Column(
                children: [
                  const Text("Informações", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 15),
                  _infoRow("Pontos Fortes", "Nam a convallis dui, et sollicitudin ipsum;"),
                  _infoRow("Pontos Fracos", "Et sollicitudin ipsum. Morbi tincidunt;"),
                  _infoRow("Objetivo", "Et sollicitudin ipsum. Morbi tincidunt;"),
                  _infoRow("Expectativa", "Ipsum. Morbi tincidunt faucibus;"),
                  _infoRow("Empresa", "Morbi tincidunt faucibus pulvinar dui;"),
                ],
              ),
            ),
          ],
        ),
      ),

      // 5. RODAPÉ (BottomNavigationBar Alternativa)
      bottomNavigationBar: Container(
        height: 70,
        color: const Color(0xFF5AB3FF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.facebook, size: 35),
            Icon(Icons.camera_alt_outlined, size: 35),
            Icon(Icons.home, size: 45),
            Icon(Icons.email_outlined, size: 35),
            Icon(Icons.reply, size: 35),
          ],
        ),
      ),
    );
  }

  // Widget auxiliar para os cards azuis
  Widget _buildExperienciaCard(String cargo, String tempo, Color cor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF1282D3),
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 3))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text(cargo, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14))),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(child: Text("Nam lacinia aliquet bibendum. Non scelerisque augue LTDA.", style: TextStyle(fontSize: 11))),
              Text(tempo, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }

  // Widget auxiliar para as linhas de texto com bullet
// Widget auxiliar para as linhas de texto com bullet
  Widget _infoRow(String titulo, String desc) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row( // Usamos Row para garantir o alinhamento à esquerda
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 13),
                children: [
                  TextSpan(
                    text: "• $titulo: ", 
                    style: const TextStyle(fontWeight: FontWeight.bold)
                  ),
                  TextSpan(text: desc),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}