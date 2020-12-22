import 'package:cloud_app/Gym/ui/screens/header_appbar.dart';
import 'package:cloud_app/Gym/ui/widgets/description_exercise.dart';
import 'package:cloud_app/Gym/ui/widgets/review_list.dart';
import 'package:flutter/material.dart';


class HomeExercise extends StatelessWidget {
  String descriptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionExercise("Flexiones", 4, descriptionDummy),
            ReviewList()

          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}