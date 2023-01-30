import 'package:flutter/material.dart';
import 'package:nailapp/profile/card_image_profile_list.dart';
import 'package:nailapp/profile/info_user_profile.dart';
import '../util/gradient_back.dart';

class ProfileNail extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final logOutIcon = Container(
      alignment: Alignment.topRight,
      margin: const EdgeInsets.only(
        top: 70.0,
        right: 15.0
      ),
      child: const Icon(
        Icons.logout,
        color: Colors.white,
        size: 25.0,
      )
    );

    return Stack(
      children: <Widget>[
        GradientBack("Perfil", 350.0),
        InfoUserProfile(),
        CardImageProfileList(),
        logOutIcon
      ],
    );
  }

}