import 'package:flutter/material.dart';

class FimScreen extends StatelessWidget {
  const FimScreen({super.key});

  void _voltarSplash(BuildContext context) {
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fim.png'),
            fit: BoxFit.cover,
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
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'LuckiestGuy',
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
