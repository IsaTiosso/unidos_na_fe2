import 'package:flutter/material.dart';
import 'dart:async';

class Fase1Screen extends StatefulWidget {
  const Fase1Screen({super.key}); // muda de estado

  @override
  State<Fase1Screen> createState() => _Fase1ScreenState();
}

// etapa -> Troca toda a parte exibida na tela (enumeração de estados)

class _Fase1ScreenState extends State<Fase1Screen> {
  int etapa = 0; // 0 = inicial, 1 = pergunta, 2 = resposta
  String feedback = '';
  bool acertou = false;

  @override
  void initState() {
    super.initState();

    // Espera 10 segundos antes de mostrar a pergunta

    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        etapa = 1;
      });
    });
  }
  void responder(String opcao) {
    setState(() {
      etapa = 2;
      if (opcao == 'B') {
        feedback = "✅ Resposta correta! Jesus é o Filho de Deus."; // mudar frase!
        acertou = true;
      } else {
        feedback = "❌ Resposta incorreta. Tente novamente."; // mudar frase!
        acertou = false;
      }
    });
  }

  void voltarMapa() {
    // Vai voltar para o mapa inicial
    Navigator.pushNamed(context, '/map');
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
      height: 292,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black26),
      ),
      child: Center(
        child: Container(
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
                   '01',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: 'LuckiestGuy',
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPergunta() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Nível 01\n\nQuem é Jesus Cristo e por que Ele é importante para os católicos?",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => responder('A'),
          child: Text("A - Jesus Cristo é um profeta como qualquer outro."),
        ),
        ElevatedButton(
          onPressed: () => responder('B'),
          child: Text("B - Jesus Cristo é o Filho de Deus e Salvador da humanidade."),
        ),
        ElevatedButton(
          onPressed: () => responder('C'),
          child: Text("C - Jesus foi apenas um sábio que ensinou boas ações."),
        ),
      ],
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
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 20),
        acertou
            ? ElevatedButton(
          onPressed: voltarMapa,
          child: Text("Avançar para o próximo nível"),
        )
            : ElevatedButton(
          onPressed: () {
            setState(() {
              etapa = 1; // Volta para a pergunta
            });
          },
          child: Text("Tentar novamente"),
        ),
      ],
    );
  }
}
