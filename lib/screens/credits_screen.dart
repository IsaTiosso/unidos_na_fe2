import 'package:flutter/material.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Créditos')),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'RESPONSÁVEIS',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontFamily: 'LuckiestGuy',
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'NOMES - FUNÇÃO',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'LuckiestGuy',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
