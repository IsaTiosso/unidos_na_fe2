import 'package:flutter/material.dart';
import 'package:unidos_na_fe2/screens/credits_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/map_screen.dart';
import 'screens/fase1_screen.dart';
import 'screens/fase2_screen.dart';
import 'screens/fase3_screen.dart';


final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const SplashScreen(),
  '/map': (context) => MapScreen(),
  '/fase1': (context) => const Fase1Screen(),
  '/fase2': (context) => const Fase2Screen(),
  '/fase3': (context) => const Fase3Screen(),
  '/credits': (context) => const CreditsScreen(),

};
