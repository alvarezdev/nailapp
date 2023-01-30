import 'package:flutter/material.dart';

import 'card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/mark1.jpeg"),
          CardImage("assets/images/mark2.jpeg"),
          CardImage("assets/images/mark3.jpeg"),
          CardImage("assets/images/mark4.jpeg")
        ],
      ),
    );
  }

}