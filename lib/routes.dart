import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/map_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => SplashScreen(),
  '/map': (context) => MapScreen(),
};
