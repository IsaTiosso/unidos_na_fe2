import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key}); // muda de estado

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showButton = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 10), () { // duração do botão carregando
      setState(() {
        showButton = true;
      });
    });
  }

// showButton -> Ativa/desativa um botão (visual + ação); o botão ainda estará presente na tela

  @override
  Widget build(BuildContext context) {
    ElevatedButton botao;

    if (showButton) {
      botao = ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/map');
        },
        style: ElevatedButton.styleFrom( // para customizar
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder( // formato
            side: BorderSide(color: Colors.black, width: 2), // borda do botão
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          'JOGAR',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontFamily: 'LuckiestGuy',
          ),
        ),
      );
    } else {
      botao = ElevatedButton(
        onPressed: null,
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          'CARREGANDO...',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontFamily: 'LuckiestGuy',
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: SizedBox.expand( // tela toda - dispositivos diferentes tamanhos
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/principal.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end, // final da tela
              children: [
                botao,
                SizedBox(height: 20), // espaço
              ],
            ),
          ),
        ),
      ),
    );
  }
}
