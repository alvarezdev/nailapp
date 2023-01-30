import 'package:flutter/material.dart';
import 'package:nailapp/home/home_nail.dart';
import 'package:nailapp/profile/profile_nail.dart';

import '../search/search_nail.dart';

class BottomNavigationBarNail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarNail() ;
  }
}

class _BottomNavigationBarNail extends State<BottomNavigationBarNail>{
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeNail(),
    SearchNail(),
    ProfileNail()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: ""
              )
            ],
          ),
        )
    );
  }

}