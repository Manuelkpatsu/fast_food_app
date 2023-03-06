import 'package:flutter/material.dart';
import 'screen/router.dart' as router;

import 'router.dart' as route;
import 'screen/auth/welcome/welcome_screen.dart';
import 'theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: CustomTheme.theme,
        initialRoute: WelcomeScreen.routeName,
        navigatorKey: router.Router.navigatorKey,
        onGenerateRoute: route.generateRoute,
      ),
    );
  }
}
