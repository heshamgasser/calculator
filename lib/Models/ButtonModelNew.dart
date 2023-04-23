import 'package:calculator/Function/functionPage.dart';
import 'package:flutter/material.dart';

class ButtonModelNew extends StatelessWidget {
  String buttonText;
  Color buttonColor;
  int buttonFlex;
  Function onBtnClicked;

  ButtonModelNew({
    required this.buttonText,
    required this.buttonColor,
    this.buttonFlex = 1,
    required this.onBtnClicked,
  });



  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: buttonFlex,
      child: TextButton(
        onPressed: () {
         onBtnClicked(buttonText);
          },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: buttonColor,
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }


}
