import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Container(
            color: Colors.blueGrey, // Fundo da área fixa (simula a "tela do celular")
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Mapa do Jogo',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Text('Bem-vindo ao Mapa'), // Texto simples aqui
              ],
            ),
          ),
        ),
      ),
    );
  }
}
