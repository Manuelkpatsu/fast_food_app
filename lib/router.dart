import 'package:flutter/material.dart';

import 'screen/auth/login/login_screen.dart';
import 'screen/auth/welcome/welcome_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case WelcomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const WelcomeScreen());
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${settings.name}',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      );
  }
}
