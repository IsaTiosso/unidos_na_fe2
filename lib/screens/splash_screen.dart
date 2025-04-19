import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showButton = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        showButton = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    ElevatedButton botao;

    if (showButton) {
      botao = ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/map');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 2),
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

    final screenWidth = MediaQuery.of(context).size.width; //ver de mudar
    final screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
      body: Center(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/principal.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              botao,
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
