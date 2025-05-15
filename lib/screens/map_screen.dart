import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final ScrollController _scrollController = ScrollController(initialScrollOffset: 1800);
  int faseAtual = 1;

  @override
  void initState() {
    super.initState();
    _carregarProgresso();
  }

  Future<void> _carregarProgresso() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      faseAtual = prefs.getInt('faseAtual') ?? 1;
    });
  }

  Widget _buildBotaoFase(int numeroFase, double top, double left) {
    bool desbloqueada = numeroFase <= faseAtual;
    return Positioned(
      top: top,
      left: MediaQuery.of(context).size.width * left,
      child: ElevatedButton(
        onPressed: desbloqueada
            ? () {
          Navigator.pushNamed(context, '/fase$numeroFase');
        }
            : null, // desabilita se não estiver desbloqueada
        style: ElevatedButton.styleFrom(
          backgroundColor: desbloqueada ? null : Colors.grey[400],
          padding: EdgeInsets.all(30),
          shape: CircleBorder(
            side: BorderSide(
              color: desbloqueada ? Colors.lightBlue : Colors.grey,
              width: 5,
            ),
          ),
        ),
        child: Text(
          '$numeroFase',
          style: const TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontFamily: 'LuckiestGuy',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[800],
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Center(
            child: SizedBox(
              height: 2000,
              width: double.infinity,
              child: Stack(
                children: [
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
                  // Parque
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

                  // Botões de fases
                  _buildBotaoFase(1, 1820, 0.65),
                  _buildBotaoFase(2, 1700, 0.59),
                  _buildBotaoFase(3, 1600, 0.40),
                  _buildBotaoFase(4, 1500, 0.25),
                  _buildBotaoFase(5, 1400, 0.15),
                  _buildBotaoFase(6, 1290, 0.19),
                  _buildBotaoFase(7, 1190, 0.35),
                  _buildBotaoFase(8, 1100, 0.54),
                  _buildBotaoFase(9, 1000, 0.72),
                  _buildBotaoFase(10, 900, 0.76),
                  _buildBotaoFase(11, 800, 0.65),
                  _buildBotaoFase(12, 700, 0.44),

                  // Botão de créditos
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
                            side: BorderSide(color: Colors.black, width: 2),
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
