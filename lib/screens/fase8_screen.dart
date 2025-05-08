import 'package:flutter/material.dart';

class Fase8Screen extends StatelessWidget {
  const Fase8Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fase 8')),
      body: const Center(
        child: Text(
          'Bem-vindo à Fase 8!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
