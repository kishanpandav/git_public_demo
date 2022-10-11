import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/rendering.dart';
import 'Medical_icons.dart';

import './player.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var count = 1;

  void incrementCounter() {
    setState(() {
      count++;
    });
    print('increment counter function called: $count');
  }

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;

    List<Player> dream11Players = [
      Player(
          name: 'MS DHONI',
          backgroundColor: Colors.amber,
          team: 'Chennai Super Kings',
          profilPic:
              'https://c.ndtvimg.com/2021-11/o66r0bb8_ms-dhoni-ipl_625x300_20_November_21.jpg?im=FeatureCrop,algorithm=dnn,width=806,height=605'),
      Player(
          name: 'Viral Kohli',
          backgroundColor: Colors.red,
          team: 'Banglaore Royal Challanger',
          profilPic:
              'https://m.cricbuzz.com/a/img/v1/192x192/i1/c170661/virat-kohli.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
    ];

    return MaterialApp(
      title: 'My App vxsdfgg',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
          ),
          body: Column(
            children: dream11Players.map((player) {
              return Card(
                color: player.backgroundColor,
                child: Row(
                  children: [
                    Image.network(
                      player.profilPic,
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Player Name: ${player.name}'),
                      Text('Team Name: ${player.team}')
                    ],)
                  ],
                ),
              );
            }).toList(),
          )),
    );
  }
}
