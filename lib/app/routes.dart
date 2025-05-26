import 'package:auth_mobile_app/screens/home_screen.dart';
import 'package:auth_mobile_app/screens/login_screen.dart';
import 'package:auth_mobile_app/screens/register_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/login': (context) => const LoginScreen(),
  '/register': (context) => RegisterScreen(),
  '/home': (context) => const HomeScreen(),
};
