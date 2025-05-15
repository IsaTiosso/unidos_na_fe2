import 'package:flutter/material.dart';
import 'package:unidos_na_fe2/screens/credits_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/map_screen.dart';
import 'screens/fase1_screen.dart';
import 'screens/fase2_screen.dart';
import 'screens/fase3_screen.dart';
import 'screens/fase4_screen.dart';
import 'screens/fase5_screen.dart';
import 'screens/fase6_screen.dart';
import 'screens/fase7_screen.dart';
import 'screens/fase8_screen.dart';
import 'screens/fase9_screen.dart';
import 'screens/fase10_screen.dart';
import 'screens/fase11_screen.dart';
import 'screens/fase12_screen.dart';
import 'screens/fim_screen.dart';


final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const SplashScreen(),
  '/map': (context) => MapScreen(),
  '/fase1': (context) => const Fase1Screen(),
  '/fase2': (context) => const Fase2Screen(),
  '/fase3': (context) => const Fase3Screen(),
  '/fase4': (context) => const Fase4Screen(),
  '/fase5': (context) => const Fase5Screen(),
  '/fase6': (context) => const Fase6Screen(),
  '/fase7': (context) => const Fase7Screen(),
  '/fase8': (context) => const Fase8Screen(),
  '/fase9': (context) => const Fase9Screen(),
  '/fase10': (context) => const Fase10Screen(),
  '/fase11': (context) => const Fase11Screen(),
  '/fase12': (context) => const Fase12Screen(),
  '/credits': (context) => const CreditsScreen(),
  '/fim': (context) => const FimScreen(),
};
