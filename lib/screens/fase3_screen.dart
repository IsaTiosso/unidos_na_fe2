import 'package:flutter/material.dart';

class Fase3Screen extends StatelessWidget {
  const Fase3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fase 3')),
      body: const Center(
        child: Text(
          'Bem-vindo à Fase 3!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
