import 'package:calculator/Function/functionPage.dart';
import 'package:calculator/Models/ButtonModel.dart';
import 'package:calculator/Models/textModel.dart';
import 'package:flutter/material.dart';
import '../Models/ButtonModelNew.dart';

class CalculatorScr extends StatefulWidget {
  static const String routeName = 'Calculator';

  @override
  State<CalculatorScr> createState() => _CalculatorScrState();
}

class _CalculatorScrState extends State<CalculatorScr> {
  String equation = '';

  String result = '';

  String expression = '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Calculator',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextModel(
              content: equation,
              fontSize: 38,
            ),
            // SizedBox(height: 20),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            Expanded(
              flex: 2,
              child: TextModel(
                content: result,
                fontSize: 48,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ButtonModelNew(
                    buttonText: 'C',
                    buttonColor: Colors.red,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '⌫',
                    buttonColor: Colors.blue,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '%',
                    buttonColor: Colors.blue,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '÷',
                    buttonColor: Colors.blue,
                    onBtnClicked: onBtnClicked,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ButtonModel(
                    buttonText: '7',
                    buttonColor: Colors.grey,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '8',
                    buttonColor: Colors.grey,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '9',
                    buttonColor: Colors.grey,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '×',
                    buttonColor: Colors.blue,
                    onBtnClicked: onBtnClicked,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ButtonModel(
                    buttonText: '4',
                    buttonColor: Colors.grey,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '5',
                    buttonColor: Colors.grey,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '6',
                    buttonColor: Colors.grey,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '-',
                    buttonColor: Colors.blue,
                    onBtnClicked: onBtnClicked,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ButtonModel(
                    buttonText: '1',
                    buttonColor: Colors.grey,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '2',
                    buttonColor: Colors.grey,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '3',
                    buttonColor: Colors.grey,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '+',
                    buttonColor: Colors.blue,
                    onBtnClicked:  onOperationClicked,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ButtonModel(
                    buttonText: '0',
                    buttonColor: Colors.grey,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '.',
                    buttonColor: Colors.grey,
                    onBtnClicked: onBtnClicked,
                  ),
                  ButtonModel(
                    buttonText: '=',
                    buttonColor: Colors.red,
                    onBtnClicked: onBtnClicked,
                    buttonFlex: 2,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

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
