import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key});

  final ScrollController _scrollController = ScrollController(
    initialScrollOffset: 1200, // Mostra embaixo já
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
        child: SingleChildScrollView( // para rodar a tela
          controller: _scrollController,
          child: Center(
            child: SizedBox(
              height: 1800, // Altura aumentada para caber todos os botões
              width: double.infinity,
              child: Stack( // posicionamento
                children: [
                  // Botões de 1 a 12
                  Positioned(
                    top: 1500,
                    left: MediaQuery.of(context).size.width * 0.60,
                    child: _buildLevelButton('1'),
                  ),
                  Positioned(
                    top: 1400,
                    left: MediaQuery.of(context).size.width * 0.52,
                    child: _buildLevelButton('2'),
                  ),
                  Positioned(
                    top: 1300,
                    left: MediaQuery.of(context).size.width * 0.40,
                    child: _buildLevelButton('3'),
                  ),
                  Positioned(
                    top: 1200,
                    left: MediaQuery.of(context).size.width * 0.25,
                    child: _buildLevelButton('4'),
                  ),
                  Positioned(
                    top: 1100,
                    left: MediaQuery.of(context).size.width * 0.15,
                    child: _buildLevelButton('5'),
                  ),
                  Positioned(
                    top: 1000,
                    left: MediaQuery.of(context).size.width * 0.17,
                    child: _buildLevelButton('6'),
                  ),
                  Positioned(
                    top: 900,
                    left: MediaQuery.of(context).size.width * 0.25,
                    child: _buildLevelButton('7'),
                  ),
                  Positioned(
                    top: 800,
                    left: MediaQuery.of(context).size.width * 0.40,
                    child: _buildLevelButton('8'),
                  ),
                  Positioned(
                    top: 700,
                    left: MediaQuery.of(context).size.width * 0.52,
                    child: _buildLevelButton('9'),
                  ),
                  Positioned(
                    top: 600,
                    left: MediaQuery.of(context).size.width * 0.54,
                    child: _buildLevelButton('10'),
                  ),
                  Positioned(
                    top: 500,
                    left: MediaQuery.of(context).size.width * 0.48,
                    child: _buildLevelButton('11'),
                  ),
                  Positioned(
                    top: 400,
                    left: MediaQuery.of(context).size.width * 0.40,
                    child: _buildLevelButton('12'),
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
        ClipOval(
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
