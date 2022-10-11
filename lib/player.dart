import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Player{
 @required String name;
 @required  String profilPic;
@required String team;
Color backgroundColor;

  Player({this.name = '', this.profilPic = '', this.team = '', this.backgroundColor = Colors.white });
}