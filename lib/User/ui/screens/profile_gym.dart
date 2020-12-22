import 'package:cloud_app/User/ui/screens/profile_header.dart';
import 'package:cloud_app/User/ui/widgets/profile_background.dart';
import 'package:cloud_app/User/ui/widgets/profile_exercise_list.dart';
import 'package:flutter/material.dart';


class ProfileGym extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return Container(
      color: Colors.indigo,
    );*/
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[
            ProfileHeader(),
            ProfileExerciseList()

          ],
        ),
      ],
    );
  }

}