import 'package:cloud_app/User/ui/screens/profile_gym.dart';
import 'package:cloud_app/User/ui/widgets/profile_exercise.dart';
import 'package:flutter/material.dart';
import 'package:cloud_app/Gym/model/exercise.dart';

class ProfileExerciseList extends StatelessWidget {

  Exercise exercise = Exercise(
      name: "Lagartijas",
      description: "Se puede hacer en casa",
      urlImage: "https://cdn.pixabay.com/photo/2017/08/07/14/02/people-2604149_1280.jpg",
      likes: 3

  );
  Exercise exercise2 = Exercise(
      name: "Trabajo de pierna",
      description: "Se puede hacer en casa",
      urlImage: "https://cdn.pixabay.com/photo/2016/11/22/22/24/adult-1850925_1280.jpg",
      likes: 10

  );

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
          ProfileExercise(exercise),
          ProfileExercise(exercise2),
        ],
      ),
    );
  }

}