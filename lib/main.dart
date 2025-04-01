import 'package:flutter/material.dart';
import 'routes.dart'; // Importa o arquivo de rotas do app

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unidos na Fé',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: appRoutes, // Definindo as rotas do jogo
    );
  }
}
