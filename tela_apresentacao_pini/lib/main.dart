import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: PerfilDarkApp(), debugShowCheckedModeBanner: false));

class PerfilDarkApp extends StatelessWidget {
  const PerfilDarkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Fundo quase preto (Dark Mode)
      body: Column(
        children: [
          // 1. CABEÇALHO DOURADO/AMARELO
          Container(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
            decoration: const BoxDecoration(
              color: Color(0xFFD4AF37), // Cor dourada/amarela da imagem
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                // Linha com os botões superiores
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildTopButton(Icons.arrow_back),
                    _buildTopButton(Icons.logout), // Ícone de saída à direita
                  ],
                ),
                const SizedBox(height: 10),
                // Foto de Perfil (Círculo Preto)
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, size: 80, color: Colors.grey),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Nome Pessoa",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ],
            ),
          ),

          // 2. CORPO (LISTA DE INFOS)
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                // Botão "Editar" e ícone de upload
                Row(
                  children: [
                    _buildSmallButton("editar"),
                    const SizedBox(width: 15),
                    const Icon(Icons.ios_share, color: Colors.grey, size: 30),
                    const SizedBox(width: 10),
                    const Text("...", style: TextStyle(color: Colors.grey, fontSize: 30)),
                  ],
                ),
                const SizedBox(height: 25),
                // Linhas de Informação
                _buildInfoRow("INFO"),
                _buildInfoRow("INFO"),
                _buildInfoRow("INFO"),
              ],
            ),
          ),

          // 3. BARRA DE NAVEGAÇÃO INFERIOR CUSTOMIZADA
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            color: const Color(0xFF121212),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.home_outlined, color: Color(0xFFD4AF37), size: 35),
                const Icon(Icons.notifications_none, color: Color(0xFFD4AF37), size: 35),
                const Icon(Icons.music_note, color: Color(0xFFD4AF37), size: 35),
                // Botão de Perfil ativo (com fundo dourado)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4AF37),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(Icons.person_outline, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget para os botões do topo (Seta e Sair)
  Widget _buildTopButton(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: Colors.black, size: 28),
    );
  }

  // Widget para os botões pequenos (ex: editar)
  Widget _buildSmallButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFD4AF37),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildInfoRow(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xFFD4AF37),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Center(child: Text("foto", style: TextStyle(fontSize: 10))),
          ),
          const SizedBox(width: 20),
          Text(text, style: const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 18)),
        ],
      ),
    );
  }
}