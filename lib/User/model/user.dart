import 'package:cloud_app/Gym/model/exercise.dart';
import 'package:flutter/material.dart';

class User{
  final String uId;
  final String name;
  final String email;
  final String photoURL;
  final List<Exercise> myExercises;
  final List<Exercise> myFavouriteExercises;

  User({
    Key key,
     @required this.uId,
     @required this.name,
     @required this.email,
     @required this.photoURL,
    this.myExercises,
    this.myFavouriteExercises
  });


}