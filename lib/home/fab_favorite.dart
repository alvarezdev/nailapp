import 'package:flutter/material.dart';


class FABFavorite extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FABFavorite();
  }

}

class _FABFavorite extends State<FABFavorite>{

  @override
  Widget build(BuildContext context) {

    void onPressedFav() {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Favorito"))
      );
    }
    
    var floatingActionButton = FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true ,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: const Icon(
          Icons.favorite_border
      ),
    );

    return floatingActionButton;
  }
}