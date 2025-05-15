import 'package:flutter/material.dart';

class FimScreen extends StatelessWidget {
  const FimScreen({super.key});

  void _voltarSplash(BuildContext context) {
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox.expand(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fim.png'), // sua imagem final
                fit: BoxFit.cover, // cobre toda a tela
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () => _voltarSplash(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8DD833),
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'SAIR',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'LuckiestGuy',
                    ),
                  ),
                ),
                const SizedBox(height: 40), // Espaço entre botão e base da tela
              ],
            ),
          ),
        ),
      ),
    );
  }
}
