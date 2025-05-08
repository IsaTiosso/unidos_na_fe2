import 'package:flutter/material.dart';

class Fase4Screen extends StatelessWidget {
  const Fase4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fase 4')),
      body: const Center(
        child: Text(
          'Bem-vindo à Fase 4!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
