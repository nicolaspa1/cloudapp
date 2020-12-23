import 'package:cloud_app/Gym/ui/screens/header_appbar.dart';
import 'package:cloud_app/Gym/ui/widgets/description_exercise.dart';
import 'package:cloud_app/Gym/ui/widgets/review_list.dart';
import 'package:flutter/material.dart';


class HomeExercise extends StatelessWidget {
  String descriptionDummy = "BichoApp es una aplicación enfocada en promover el"
      " estilo de vida saludable a través de rutinas de entrenamiento ideales según "
      "tus caracteristicas físicas y las metas que desees lograr, este proyecto nace"
      " con la intención de que cualquier persona pueda llevar un estilo de vida"
      " saludable a base de ejercicio y buena alimentación.";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionExercise("BichoApp", 4, descriptionDummy),
            ReviewList()

          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}