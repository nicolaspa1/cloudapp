import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {


  String title = "Popular";
  double height = 0.0;

  GradientBack(this.title, this.height);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.lightBlueAccent,
                Colors.cyanAccent,
                Colors.blueAccent
              ])
      ),


      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold
        ),
      ),

      alignment: Alignment(-0.9, -0.6),

    );
  }

}
