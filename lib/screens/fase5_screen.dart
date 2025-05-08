import 'package:flutter/material.dart';

class Fase5Screen extends StatelessWidget {
  const Fase5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fase 5')),
      body: const Center(
        child: Text(
          'Bem-vindo à Fase 5!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
