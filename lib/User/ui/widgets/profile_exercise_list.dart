import 'package:cloud_app/User/ui/screens/profile_gym.dart';
import 'package:cloud_app/User/ui/widgets/profile_exercise.dart';
import 'package:flutter/material.dart';
import 'package:cloud_app/Gym/model/exercise.dart';

class ProfileExerciseList extends StatelessWidget {

  Exercise exercise = new Exercise('lagartijas', 'Se puede hacer en casa', 'Pecho', '5 series de 10 repeticiones,4 series de 20 repeticiones');
  Exercise exercise2 = new Exercise('Trabajo de pierna', 'Se puede hacer en casa', 'Pierna', '5 series de 10 repeticiones');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          ProfileExercise('assets/img/ejercicio1.jpg', exercise),
          ProfileExercise('assets/img/ejercicio2.jpg', exercise2),
        ],
      ),
    );
  }

}