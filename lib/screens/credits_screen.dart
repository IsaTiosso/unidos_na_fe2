import 'package:flutter/material.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Créditos'),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 8,
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle('Nome da disciplina:'),
                  const SectionText('Desenvolvimento de Software', bold: true),

                  const SizedBox(height: 20),

                  const SectionTitle('Nome do professor responsável:'),
                  const SectionText('Prof. Dr. Elvio Gilberto da Silva', bold: true),

                  const SizedBox(height: 20),

                  const SectionTitle('Nome e titulação de professores colaboradores:'),
                  const SectionText('Prof. Luiz Filipe Grael Tinós', bold: true),

                  const SizedBox(height: 20),

                  const SectionTitle('Nomes completos dos integrantes e colaboradores do grupo:'),
                  const SectionText('Fernando Fleuri Barbosa'),
                  const SectionText('Isabela Xavier Tiosso'),
                  const SectionText('Maria Clara Gasparotto'),
                  const SectionText('Matheus Eduardo Nunhez'),

                  const SizedBox(height: 30),

                  // Logos centralizadas, uma abaixo da outra
                  const Center(child: LogoWithLabel(label: 'DESENVOLVIMENTO:', imagePath: 'assets/images/logo.comp.jpg')),
                  const SizedBox(height: 24),
                  const Center(child: LogoWithLabel(label: 'APOIO:', imagePath: 'assets/images/logo.extensao.jpeg')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, color: Colors.white70),
    );
  }
}

class SectionText extends StatelessWidget {
  final String text;
  final bool bold;
  const SectionText(this.text, {this.bold = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}

class LogoWithLabel extends StatelessWidget {
  final String label;
  final String imagePath;
  const LogoWithLabel({required this.label, required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
        const SizedBox(height: 8),
        Image.asset(
          imagePath,
          width: 300, // ajuste conforme necessário
        ),
      ],
    );
  }
}
