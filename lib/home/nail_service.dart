import 'package:flutter/material.dart';
import 'package:nailapp/util/build_text_container.dart';

class NailService extends StatelessWidget{
  String path = "assets/images/spa2.jpeg";
  String nameSpaText = "";
  String serviceType = "";
  String date= "";

  NailService(this.path, this.nameSpaText, this.serviceType, this.date);

  Container setImage(String path){
    if (path.isEmpty){
      return Container(
          width: 80.0,
          height: 80.0,
          margin: const EdgeInsets.only(
              top: 20.0,
              left: 20.0
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 1.0,
              color: Colors.purpleAccent,
            ),
          ),
          child: const Icon(
            Icons.business,
            color: Colors.black12,
            size: 50.0,
          )
      );
    }else{
      return Container(
          margin: const EdgeInsets.only(
              top: 20.0,
              left: 20.0
          ),
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(path)
            ),
            border: Border.all(
              width: 1.0,
              color: Colors.purpleAccent,
            ),
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final infoNailService = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BuildTextContainer(nameSpaText, 20.0, FontWeight.normal, Colors.black, 20.0,),
        BuildTextContainer(serviceType, 15.0, FontWeight.normal, const Color(0xFFa3a5a7), 5.0),
        BuildTextContainer(date, 15.0, FontWeight.w900, Colors.black, 5.0),
      ],
    );

    return Row(
      children: <Widget>[
        setImage(path),
        infoNailService
      ],
    );
  }
}