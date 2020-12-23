import 'package:cloud_app/Gym/ui/widgets/review.dart';
import 'package:flutter/material.dart';


class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/nicolas.jpg", "Nicolas", "1 review · 5 photos", "Buen Ejercicio"),
        Review("assets/img/mondra.jpg", "Mondra", "2 review · 5 photos", "Meh"),
        Review("assets/img/nicolas.jpg", "No c", "2 review · 2 photos", "Holi c:"),

      ],
    );
  }

}