import 'package:flutter/material.dart';

import 'nail_service.dart';

class NailServiceList extends StatelessWidget{
  String title = "Servicios";
  @override
  Widget build(BuildContext context) {

    final titleList = Container(
      margin: const EdgeInsets.only(
          top: 320.0,
          left: 25.0
      ),
      child: Text(
        textAlign: TextAlign.left,
        title,
        style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final list = Container(
      margin: const EdgeInsets.only(
        top: 10.0 ,
        bottom: 20.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titleList,
          NailService("","Spa Estrellas","Tradicional","03/01/2023 - 4:00 pm"),
          NailService("assets/images/spa2.jpeg","Spa Luna","SemiPermanente","20/01/2023 - 1:00 pm"),
          NailService("assets/images/spa3.jpeg","Spa Sol","Pedicure","21/01/2023 - 9:00 am"),
          NailService("","Spa Estrellas","Tradicional","03/01/2023 - 4:00 pm"),
          NailService("assets/images/spa2.jpeg","Spa Luna","SemiPermanente","20/01/2023 - 1:00 pm"),
          NailService("assets/images/spa3.jpeg","Spa Sol","Pedicure","21/01/2023 - 9:00 am"),
        ],
      ),
    );

    return list;
  }

}