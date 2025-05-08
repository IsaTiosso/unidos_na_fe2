import 'package:flutter/material.dart';

class Fase7Screen extends StatelessWidget {
  const Fase7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fase 7')),
      body: const Center(
        child: Text(
          'Bem-vindo à Fase 7!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
