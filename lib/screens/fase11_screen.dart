import 'package:flutter/material.dart';

class Fase11Screen extends StatelessWidget {
  const Fase11Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fase 11')),
      body: const Center(
        child: Text(
          'Bem-vindo à Fase 11!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
