import 'package:flutter/material.dart';

class Fase9Screen extends StatelessWidget {
  const Fase9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fase 9')),
      body: const Center(
        child: Text(
          'Bem-vindo à Fase 9!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
