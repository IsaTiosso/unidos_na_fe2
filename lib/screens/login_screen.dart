import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // tem que ter 3 campos - um botão final clicável para outra tela

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container( // Para definir um tamanho fixo (parecendo um celular) - moldura
          width: 360, // Largura de um celular
          height: 640, // Altura de um celular
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent, // Accent deixa mais forte a cor
            borderRadius: BorderRadius.circular(20), // Cantos arredondados
            border: Border.all(color: Colors.black, width: 3), // Borda simulando um celular
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTextField('NOME'),
              const SizedBox(height: 10),
              _buildTextField('EMAIL'),
              const SizedBox(height: 10),
              _buildPasswordField(),
              const SizedBox(height: 20),
              IconButton(
                icon: const Icon(Icons.play_circle_fill, size: 50),
                onPressed: () {
                  // Navegação para outra tela // ATIVAR ESSE BOTÃO
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Campo de entrada normal (Nome e Email)
  Widget _buildTextField(String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        style: const TextStyle(fontSize: 20),
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: Colors.greenAccent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  // Campo de senha
  Widget _buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        obscureText: true, // Faz com que o texto digitado fique escondido
        style: const TextStyle(fontSize: 20),
        decoration: InputDecoration(
          hintText: 'SENHA',
          filled: true,
          fillColor: Colors.greenAccent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
