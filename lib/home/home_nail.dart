import 'package:flutter/material.dart';
import 'package:nailapp/home/fab_add_service.dart';

import '../util/header_appbar.dart';
import 'nail_service_list.dart';

class HomeNail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children:<Widget> [
            NailServiceList()
          ],
        ),
        HeaderAppBar(),
        FABAddService()
      ],
    );
  }

}