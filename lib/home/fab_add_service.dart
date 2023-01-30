import 'package:flutter/material.dart';


class FABAddService extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FABAddService();
  }
}

class _FABAddService extends State<FABAddService>{

  @override
  Widget build(BuildContext context) {

    void onPressedFav() {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Agendar nuevo servicio"))
      );
    }

    var floatingActionButton = Container(
      margin: const EdgeInsets.only(
        right: 10.0,
        bottom: 10.0
      ),
      alignment: Alignment.bottomRight,
      child: SizedBox(
        height: 60.0,
        width: 60.0,
        child: FloatingActionButton(
          backgroundColor: Color(0xFF584CD1),
          mini: true ,
          tooltip: "Fav",
          onPressed: onPressedFav,
          child: const Icon(
              Icons.add
          ),
        ),
      )
    );

    return floatingActionButton;
  }
}