import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key});

  final ScrollController _scrollController = ScrollController(
    initialScrollOffset: 1800, // Mostra embaixo já
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[800],
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
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fase1');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.lightBlue, // Cor do contorno
                            width: 5, // Espessura do contorno
                          ),
                        ),
                      ),
                      child: Text(
                        '1',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    ),
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
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fase2');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.lightBlue, // Cor do contorno
                            width: 5, // Espessura do contorno
                          ),
                        ),
                      ),
                      child: Text(
                        '2',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    ),
                  ),
                  // Fase 3
                  Positioned(
                    top: 1600,
                    left: MediaQuery.of(context).size.width * 0.40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fase3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.lightBlue, // Cor do contorno
                            width: 5, // Espessura do contorno
                          ),
                        ),
                      ),
                      child: Text(
                        '3',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    ),
                  ),
                  // Fase 4
                  Positioned(
                    top: 1500,
                    left: MediaQuery.of(context).size.width * 0.25,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fase4');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.blue, // Cor do contorno
                            width: 5, // Espessura do contorno
                          ),
                        ),
                      ),
                      child: Text(
                        '4',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    ),
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
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fase5');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.blue, // Cor do contorno
                            width: 5, // Espessura do contorno
                          ),
                        ),
                      ),
                      child: Text(
                        '5',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    ),
                  ),
                  // Fase 6
                  Positioned(
                    top: 1290,
                    left: MediaQuery.of(context).size.width * 0.19,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fase6');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.blue, // Cor do contorno
                            width: 5, // Espessura do contorno
                          ),
                        ),
                      ),
                      child: Text(
                        '6',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    ),
                  ),
                  // Fase 7
                  Positioned(
                    top: 1190,
                    left: MediaQuery.of(context).size.width * 0.35,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fase7');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.blueAccent, // Cor do contorno
                            width: 5, // Espessura do contorno
                          ),
                        ),
                      ),
                      child: Text(
                        '7',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    ),
                  ),
                  // Fase 8
                  Positioned(
                    top: 1100,
                    left: MediaQuery.of(context).size.width * 0.54,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fase8');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.blueAccent, // Cor do contorno
                            width: 5, // Espessura do contorno
                          ),
                        ),
                      ),
                      child: Text(
                        '8',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    ),
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
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fase9');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.blueAccent, // Cor do contorno
                            width: 5, // Espessura do contorno
                          ),
                        ),
                      ),
                      child: Text(
                        '9',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    ),
                  ),
                  // Fase 10
                  Positioned(
                    top: 900,
                    left: MediaQuery.of(context).size.width * 0.76,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fase10');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(25),
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.blueGrey, // Cor do contorno
                            width: 5, // Espessura do contorno
                          ),
                        ),
                      ),
                      child: Text(
                        '10',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    ),
                  ),
                  // Fase 11
                  Positioned(
                    top: 800,
                    left: MediaQuery.of(context).size.width * 0.65,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fase11');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(25),
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.blueGrey, // Cor do contorno
                            width: 5, // Espessura do contorno
                          ),
                        ),
                      ),
                      child: Text(
                        '11',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    ),
                  ),
                  // Fase 12
                  Positioned(
                    top: 700,
                    left: MediaQuery.of(context).size.width * 0.44,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fase12');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(25),
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Colors.blueGrey, // Cor do contorno
                            width: 5, // Espessura do contorno
                          ),
                        ),
                      ),
                      child: Text(
                        '12',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'LuckiestGuy',
                        ),
                      ),
                    ),
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
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Tooltip(
                      message: 'Créditos',
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/credits');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey[800],
                          padding: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Icon(
                          Icons.info_outline,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
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
}
