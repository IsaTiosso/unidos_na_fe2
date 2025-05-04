import 'package:flutter/material.dart';

class Fase2Screen extends StatelessWidget {
  const Fase2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fase 2')),
      body: const Center(
        child: Text(
          'Bem-vindo à Fase 2!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
