
import 'package:cloud_app/User/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:cloud_app/Widgets/circle_button.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ButtonsBar extends StatelessWidget {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc= BlocProvider.of(context);
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 10.0
        ),
        child: Row(
          children: <Widget>[
            CircleButton(true, Icons.fitness_center, 20.0, Color.fromRGBO(255, 255, 255, 1),()=>{}),
            CircleButton(true, Icons.lock_open, 20.0, Color.fromRGBO(255, 255, 255, 1),()=>{}),
            CircleButton(false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1),()=>{}),
            CircleButton(true, Icons.exit_to_app, 20.0, Color.fromRGBO(255, 255, 255, 0.6),()=>{
              userBloc.signOut()
            },
            ),
            CircleButton(true, Icons.turned_in_not, 20.0, Color.fromRGBO(255, 255, 255, 1),()=>{}),

          ],
        )
    );
  }

}