import 'package:calculator/Screens/CalculatorScreen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = 'Welcome Splash Screen';

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/images/logo.jpg'),
      backgroundColor: Colors.white,
      durationInSeconds: 3,
      title: Text(
        'Calculator',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      loadingText: Text('Please Wait...'),
      navigator: CalculatorScr(),
    );
  }
}
