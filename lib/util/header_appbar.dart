import 'package:flutter/material.dart';

import '../home/card_image_list.dart';
import 'gradient_back.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenid@", 250.0),
        CardImageList()
      ],
    );
  }

}