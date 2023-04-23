import 'package:flutter/material.dart';

import '../Function/functionPage.dart';
import '../Function/functionPage.dart';

class TextModel extends StatelessWidget {

  String content;
  double fontSize;



  TextModel({required this.content , required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.end,
      style: TextStyle(
        fontSize: fontSize,
      ),
    );
  }
}
