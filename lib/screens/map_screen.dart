import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa do Jogo'),
      ),
      body: Center(
        child: Text('Bem-vindo ao mapa!'),
      ),
    );
  }
}
