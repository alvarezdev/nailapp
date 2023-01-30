import 'package:flutter/material.dart';

class BuildTextContainer extends StatelessWidget{

  String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  double marginTop;

  BuildTextContainer(this.text, this.fontSize, this.fontWeight, this.color, this.marginTop);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: marginTop,
          left: 5.0,
          right: 5.0
      ),
      child: Text(
        textAlign: TextAlign.left,
        text,
        style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color
        ),
      ),
    );
  }

}