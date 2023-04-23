import 'package:calculator/Function/functionPage.dart';
import 'package:calculator/Screens/CalculatorScreen.dart';
import 'package:calculator/Screens/welcomeScreen.dart';
import 'package:flutter/material.dart';


void main (){
  runApp(CalculatorApp());
}




class CalculatorApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CalculatorScr.routeName,
      routes: {
        WelcomeScreen.routeName:(context) => WelcomeScreen(),
        CalculatorScr.routeName: (context) => CalculatorScr(),

      },
    );
  }
}
