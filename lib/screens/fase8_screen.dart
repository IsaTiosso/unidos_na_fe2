import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Fase8Screen extends StatefulWidget {
  const Fase8Screen({super.key});

  @override
  State<Fase8Screen> createState() => _Fase8ScreenState();
}

class _Fase8ScreenState extends State<Fase8Screen> {
  int etapa = 0; // 0 = inicial, 1 = pergunta, 2 = resposta
  String feedback = '';
  bool acertou = false;

  Future<void> _avancarFase() async {
    // Salvar o progresso após completar a fase
    final prefs = await SharedPreferences.getInstance();
    int faseAtual = prefs.getInt('faseAtual') ?? 1;

    if (faseAtual < 9) {
      prefs.setInt('faseAtual', 9); // Avançar para a próxima fase
    }
  }

  void responder(String opcao) {
    setState(() {
      etapa = 2;
      if (opcao == 'A') {
        feedback = "✅ Acertou! Parabéns!";
        acertou = true;
        _avancarFase(); // Avançar para a próxima fase
      } else {
        feedback = "❌ Quase! Não desanime, você consegue!";
        acertou = false;
      }
    });
  }

  void voltarMapa() {
    Navigator.pushNamed(context, '/map'); // Volta para o mapa
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: _buildConteudo(),
        ),
      ),
    );
  }

  Widget _buildConteudo() {
    if (etapa == 0) {
      return _buildNivelIntro();
    } else if (etapa == 1) {
      return _buildPergunta();
    } else {
      return _buildFeedback();
    }
  }

  Widget _buildNivelIntro() {
    return Container(
      width: 222,
      height: 320,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black26),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'NÍVEL',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'LuckiestGuy',
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '08',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: 'LuckiestGuy',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                etapa = 1;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF8DD833),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'JOGAR',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontFamily: 'LuckiestGuy',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPergunta() {
    return Container(
      width: 320,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black26),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'NÍVEL 08',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontFamily: 'LuckiestGuy',
            ),
          ),
          SizedBox(height: 20),
          Text(
            "O que significa ser solidário?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          _buildAlternativaBotao('A', 'Ajudar a quem precisa.'),
          SizedBox(height: 12),
          _buildAlternativaBotao('B', 'Não dividir nada.'),
          SizedBox(height: 12),
          _buildAlternativaBotao('C', 'Só pensar em si mesmo.'),
        ],
      ),
    );
  }

  Widget _buildAlternativaBotao(String letra, String texto) {
    return ElevatedButton(
      onPressed: () => responder(letra),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.black26),
        ),
        elevation: 2,
      ),
      child: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightBlue[100],
              border: Border.all(color: Colors.black54),
            ),
            alignment: Alignment.center,
            child: Text(
              letra,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              texto,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeedback() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          feedback,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 20),
        acertou
            ? ElevatedButton(
          onPressed: voltarMapa,
          child: Text("Avançar para o próximo nível!"),
        )
            : ElevatedButton(
          onPressed: () {
            setState(() {
              etapa = 1;
            });
          },
          child: Text("Tente novamente!"),
        ),
      ],
    );
  }
}
