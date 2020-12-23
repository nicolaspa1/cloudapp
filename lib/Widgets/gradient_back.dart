import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {


  String title = "Popular";
  double height = 0.0;

  GradientBack({Key key, this.height});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidht  = MediaQuery.of(context).size.width;
    if(height == null){
      height = screenHeight;
    }

    return Container(
      width: screenWidht,
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


      child:FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-1.5,-0.8),
        child: Container(
          width: screenWidht,
          height: screenHeight,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.05),
                borderRadius: BorderRadius.circular(screenHeight/2)
          ),
        ),
      ),

      /*
      Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold
        ),
      ),
*/
     // alignment: Alignment(-0.9, -0.6),

    );
  }

}
