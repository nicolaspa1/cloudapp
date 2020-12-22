import 'package:cloud_app/Gym/ui/widgets/card_image.dart';
import 'package:flutter/material.dart';


class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/ejercicio1.jpg"),
          CardImage("assets/img/ejercicio2.jpg"),
          CardImage("assets/img/ejercicio1.jpg"),
          CardImage("assets/img/ejercicio2.jpg"),
          CardImage("assets/img/ejercicio1.jpg"),
        ],
      ),
    );
  }

}