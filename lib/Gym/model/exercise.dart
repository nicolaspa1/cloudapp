import 'package:cloud_app/User/model/user.dart';
import 'package:flutter/cupertino.dart';

class Exercise {
  String id;
  String name;
  String description;
  String urlImage;
  int likes;
  User userOwner;

  Exercise({
    Key key,
    @required this.name,
    @required this.description,
    @required this.urlImage,
    this.likes,
    @required this.userOwner
  });
}