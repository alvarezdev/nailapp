import 'package:flutter/material.dart';

import 'card_image_profile.dart';

class CardImageProfileList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
          top: 220.0
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardImageProfile("assets/images/nails1.jpeg","Spa Estrellas","Tradicional","03/01/2023 - 1:00 pm"),
          CardImageProfile("assets/images/nails2.jpeg","Spa Sol","Semipermanente","09/01/2023 - 5:00 pm"),
          CardImageProfile("assets/images/nails3.jpeg","Spa luna","Tradicional","11/01/2023 - 2:00 pm"),
          CardImageProfile("assets/images/nails1.jpeg","Spa Estrellas","Semipermanente","20/01/2023 - 4:00 pm")
        ],
      ),
    );
  }

}