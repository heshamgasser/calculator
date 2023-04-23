import 'package:flutter/material.dart';

// class PressedButton {
//   static String equation = '';
//   static String result = '';
//   static String expression = '';
//
//   static void onBtnClicked(String value) {
//     equation += value;
//   }
//
//   static buttonPressed(String buttonText) {
//     if (buttonText == 'C') {
//       equation = '0';
//       result = '0';
//     } else if (buttonText == '⌫') {
//       equation = equation.substring(0, equation.length - 1);
//       if (equation == '0') {
//         equation = '0';
//       }
//     } else if (buttonText == '=') {
//     } else {
//       if (buttonText == '0') {
//         equation = buttonText;
//       } else {
//         equation = equation + buttonText;
//       }
//     }
//   }
// }

class FunctionPage extends StatefulWidget {
  const FunctionPage({Key? key}) : super(key: key);

  @override
  State<FunctionPage> createState() => _FunctionPageState();
}

class _FunctionPageState extends State<FunctionPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  String equation = '';

  String result = '';

  String expression = '';

  void onBtnClicked(value) {

    if (value == 'C') {
      equation = '0';
      result = '0';
    } else if (value == '⌫') {
      equation = equation.substring(0, equation.length - 1);
      if (equation == '0') {
        equation = value;
      }
    } else if (value == '=') {
      result = equation;
    } else {
      if (equation == '0') {
        equation = value;
      } else {
        equation += value;
      }
    }
    setState(
          () {},
    );
  }

  String calculate (String lhs , String operator , String rhs){
    double LHS = double.parse(lhs);
    double RHS = double.parse(rhs);
    double data = 0;
    if (operator == '+'){
      data =  LHS + RHS;
    } else if (operator == '-'){
      data =  LHS - RHS;
    }else if (operator == '×'){
      data = LHS * RHS;
    } else if (operator == '÷'){
      data = LHS / RHS;
    }
    return data.toString();
  }

  void onOperationClicked(operator) {
    if (operator.isEmpty) {
      equation += operator;
      result = equation;
    } else{
      result = calculate(equation, operator, equation);
    }
    expression = operator;

    setState(
          () {},
    );
  }

}



