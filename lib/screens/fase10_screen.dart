import 'package:flutter/material.dart';

class Fase10Screen extends StatelessWidget {
  const Fase10Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fase 10')),
      body: const Center(
        child: Text(
          'Bem-vindo à Fase 10!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
