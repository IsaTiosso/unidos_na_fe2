import 'package:flutter/material.dart';

class Fase12Screen extends StatelessWidget {
  const Fase12Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fase 12')),
      body: const Center(
        child: Text(
          'Bem-vindo à Fase 12!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
