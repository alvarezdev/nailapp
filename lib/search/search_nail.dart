import 'package:flutter/material.dart';

import '../home/nail_service.dart';
import '../util/gradient_back.dart';

class SearchNail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final search = Container(
      margin: const EdgeInsets.only(
        top: 100.0,
        left: 10.0,
        right: 10.0

      ),
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  width: 3.0,
                  color: Colors.grey
                )
            ),
            hintText: 'Buscar...',
            hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 18
            ),
            prefixIcon: Container(
              padding: const EdgeInsets.all(15),
              width: 18,
              child: const Icon(
                Icons.search,
              ),
            )
        ),
      ),

    );

    final cont = Container(
      margin: const EdgeInsets.only(
          top: 200.0,
      ),
      child: ListView(
        children:<Widget> [
          NailService("","Spa Estrellas","Tradicional","03/01/2023 - 4:00 pm"),
          NailService("assets/images/spa2.jpeg","Spa Luna","SemiPermanente","20/01/2023 - 1:00 pm"),
          NailService("assets/images/spa3.jpeg","Spa Sol","Pedicure","21/01/2023 - 9:00 am"),
          NailService("","Spa Estrellas","Tradicional","03/01/2023 - 4:00 pm"),
          NailService("assets/images/spa2.jpeg","Spa Luna","SemiPermanente","20/01/2023 - 1:00 pm"),
          NailService("assets/images/spa3.jpeg","Spa Sol","Pedicure","21/01/2023 - 9:00 am")
        ],
      ),
    );

    return Stack(
      children: [
        GradientBack("Buscar...", 200.0),
        search,
        cont
      ],

    );
  }

}