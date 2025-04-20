import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
        child: SingleChildScrollView( // permite a rolagem da tela
          child: Center(
            child: SizedBox(
              height: 600,
              width: double.infinity, // máximo de espaço
              child: Stack(
                children: [
                  // Fase 3
                  Positioned( //posição
                    top: 300,
                    left: MediaQuery.of(context).size.width * 0.35,
                    child: _buildLevelButton('3'), // criação do botão
                  ),
                  // Fase 2
                  Positioned(
                    top: 405,
                    left: MediaQuery.of(context).size.width * 0.45,
                    child: _buildLevelButton('2'),
                  ),
                  // Fase 1
                  Positioned(
                    top: 500,
                    left: MediaQuery.of(context).size.width * 0.35,
                    child: _buildLevelButton('1'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /* Coloque esse widget a 35% da largura da tela, a partir da esquerda
  = MediaQuery.of(context).size.width * 0.35 */

  // deixar os botões clicáveis depois!

  Widget _buildLevelButton(String number) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipOval( // deixa a imagem redonda
          child: Image.asset(
            'assets/images/button.png',
            height: 69,
            width: 78,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          number,
          style: const TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontFamily: 'LuckiestGuy',
          ),
        ),
      ],
    );
  }
}
