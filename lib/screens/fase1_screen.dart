import 'package:flutter/material.dart';

class Fase1Screen extends StatelessWidget {
  const Fase1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fase 1')),
      body: const Center(
        child: Text(
          'Bem-vindo à Fase 1!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
