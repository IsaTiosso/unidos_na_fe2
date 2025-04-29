import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key});

  final ScrollController _scrollController = ScrollController(
    initialScrollOffset: 1800, // Mostra embaixo já
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
              height: 2000, // Altura aumentada para caber todos os botões
              width: double.infinity,
              child: Stack( // posicionamento
                children: [
                  // Fase 1
                  Positioned(
                    top: 1820,
                    left: MediaQuery.of(context).size.width * 0.65,
                    child: _buildLevelButton('1'),
                  ),
                  // Casa
                  Positioned(
                    top: 1700,
                    left: (MediaQuery.of(context).size.width - 360) / 2 - 50,
                    child: Image.asset(
                      'assets/images/casa.png',
                      height: 261,
                      width: 261,
                      fit: BoxFit.contain,
                    ),
                  ),
                  // Fase 2
                  Positioned(
                    top: 1700,
                    left: MediaQuery.of(context).size.width * 0.59,
                    child: _buildLevelButton('2'),
                  ),
                  // Fase 3
                  Positioned(
                    top: 1600,
                    left: MediaQuery.of(context).size.width * 0.40,
                    child: _buildLevelButton('3'),
                  ),
                  // Fase 4
                  Positioned(
                    top: 1500,
                    left: MediaQuery.of(context).size.width * 0.25,
                    child: _buildLevelButton('4'),
                  ),
                  // Escola
                  Positioned(
                    top: 1250,
                    left: MediaQuery.of(context).size.width * 0.38,
                    child: Image.asset(
                      'assets/images/escola.png',
                      height: 311,
                      width: 309,
                      fit: BoxFit.contain,
                    ),
                  ),
                  // Fase 5
                  Positioned(
                    top: 1400,
                    left: MediaQuery.of(context).size.width * 0.15,
                    child: _buildLevelButton('5'),
                  ),
                  // Fase 6
                  Positioned(
                    top: 1290,
                    left: MediaQuery.of(context).size.width * 0.19,
                    child: _buildLevelButton('6'),
                  ),
                  // Fase 7
                  Positioned(
                    top: 1190,
                    left: MediaQuery.of(context).size.width * 0.35,
                    child: _buildLevelButton('7'),
                  ),
                  // Fase 8
                  Positioned(
                    top: 1100,
                    left: MediaQuery.of(context).size.width * 0.54,
                    child: _buildLevelButton('8'),
                  ),
                  // Park
                 Positioned(
                  top: 800,
                  left: (MediaQuery.of(context).size.width - 360) / 2 - 60,
                  child: Image.asset(
                     'assets/images/park.png',
                      height: 311,
                      width: 309,
                     fit: BoxFit.contain,
                   ),
                 ),
                  // Fase 9
                  Positioned(
                    top: 1000,
                    left: MediaQuery.of(context).size.width * 0.72,
                    child: _buildLevelButton('9'),
                  ),
                  // Fase 10
                  Positioned(
                    top: 900,
                    left: MediaQuery.of(context).size.width * 0.76,
                    child: _buildLevelButton('10'),
                  ),
                  // Fase 11
                  Positioned(
                    top: 800,
                    left: MediaQuery.of(context).size.width * 0.65,
                    child: _buildLevelButton('11'),
                  ),
                  // Fase 12
                  Positioned(
                    top: 700,
                    left: MediaQuery.of(context).size.width * 0.44,
                    child: _buildLevelButton('12'),
                  ),
                  // Igreja
                  Positioned(
                    top: 400,
                    left: (MediaQuery.of(context).size.width - 360) / 2,
                    child: Image.asset(
                      'assets/images/igreja.png',
                      height: 252,
                      width: 360,
                      fit: BoxFit.contain,
                    ),
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
