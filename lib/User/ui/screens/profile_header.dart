import 'package:cloud_app/User/bloc/bloc_user.dart';
import 'package:cloud_app/User/model/user.dart';
import 'package:flutter/material.dart';
import 'package:cloud_app/User/ui/widgets/user_info.dart';
import 'package:cloud_app/User/ui/widgets/button_bar.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileHeader extends StatelessWidget {
  UserBloc userBloc;
  User user;


  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);


    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
            return showProfileData(snapshot);
          case ConnectionState.done:
            return showProfileData(snapshot);
        }

      },
    );

  }
  Widget showProfileData(AsyncSnapshot snapshot) {
    if(!snapshot.hasData || snapshot.hasError){
      print("No Logeado");
      return Container(
        margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 50.0
        ),
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(),
            Text("No se pudo cargar la informacion. Por favor logueate")
          ],
        ),
      );
    }else{
      print("Logeado");
      user = User(name: snapshot.data.displayName,email: snapshot.data.email,photoURL: snapshot.data.photoUrl);
      return Container(
        margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 50.0
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[

              ],
            ),
            UserInfo(user),
            ButtonsBar()
          ],
        ),
      );
    }
  }

}
