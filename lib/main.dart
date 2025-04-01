import 'package:flutter/material.dart';
import 'routes.dart'; // Importa o arquivo de rotas

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
      initialRoute: '/login', // Define a tela de login como inicial
      routes: appRoutes, // Usa o mapa de rotas definido
    );
  }

