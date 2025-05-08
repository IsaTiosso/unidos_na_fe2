import 'package:flutter/material.dart';

class Fase6Screen extends StatelessWidget {
  const Fase6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fase 6')),
      body: const Center(
        child: Text(
          'Bem-vindo à Fase 6!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
