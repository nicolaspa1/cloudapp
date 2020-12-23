import 'package:cloud_app/Gym/ui/widgets/card_image_list.dart';
import 'package:cloud_app/Widgets/gradient_back.dart';
import 'package:flutter/material.dart';


class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack(height: 250),
        CardImageList()
      ],
    );
  }

}