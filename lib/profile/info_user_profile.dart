import 'package:flutter/material.dart';

import '../util/build_text_container.dart';

class InfoUserProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final imageUser = Container(
        width: 80.0,
        height: 80.0,
        margin: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            bottom: 380.0
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 1.0,
            color: Colors.white,
          ),
        ),
        child: const Icon(
          Icons.person,
          color: Colors.black26,
          size: 50.0,
        )
    );

    final infoUser = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BuildTextContainer("Angelina Jolie Voight", 20.0, FontWeight.normal, Colors.white, 140.0,),
        BuildTextContainer("angie@gmail.com", 15.0, FontWeight.normal, Colors.white, 5.0)
      ],
    );

   return Row(
      children: [
        imageUser,
        infoUser
      ],
    );
  }
}