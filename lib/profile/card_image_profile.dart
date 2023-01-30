import 'package:flutter/material.dart';

import '../home/fab_favorite.dart';

class CardImageProfile extends StatelessWidget{
  
  String pathImage = "assets/images/mark1.jpeg";
  String nameSpaText = "";
  String serviceType = "";
  String date= "";

  CardImageProfile(this.pathImage, this.nameSpaText, this.serviceType, this.date);

  Container textContainer(String text, double? fontSize, FontWeight? fontWeight, Color? color ) {
    return Container(
      margin: const EdgeInsets.only(
        top: 5.0,
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
  
  @override
  Widget build(BuildContext context) {
    final cardImage = Container(
      height: 200.0,
      width: 350.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit:  BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle
      ),
    );

    final info = Container(
      padding: const EdgeInsets.only(
        top: 10.0,
        right: 50.0,
        left: 50.0,
        bottom: 10.0
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        border: Border.all(
          width: 1.0,
          color: Colors.black12,
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          textContainer(nameSpaText, 20.0, FontWeight.normal, Colors.black),
          textContainer(serviceType, 15.0, FontWeight.normal, const Color(0xFFa3a5a7)),
          textContainer(date, 15.0, FontWeight.w900, Colors.black),
        ],
      ),
    );

    final infoAndFabFavorite = Stack(
      alignment: const Alignment(0.95,1.8),
      children: [
        info,
        FABFavorite()
      ]
    );

    final imageAndInfo = Stack(
        alignment: const Alignment(0.0,2.0),
        children: [
          cardImage,
          infoAndFabFavorite
        ]
    );

    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
          top: 5.0,
          left: 5.0,
          right: 5.0,
          bottom: 85.0
      ),
      child: imageAndInfo,
    );
  }

}