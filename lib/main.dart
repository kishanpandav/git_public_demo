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
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
      Player(
          name: 'Rohit Sharma',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
    ];

    dream11Players.add(
      Player(
          name: 'Ishan Kishan',
          backgroundColor: Colors.blue,
          team: 'Mumbai Indians',
          profilPic: 'https://wallpaperaccess.com/full/3882913.jpg'),
    );
    return MaterialApp(
      title: 'My App vxsdfgg',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
          ),
          body: GridView.builder(
              reverse: false,
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.vertical,
              itemCount: dream11Players.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1 ,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2),
              itemBuilder: (context, index) {
                Player player = dream11Players[index];
                return PlayerCard(player: player,run: 0,);
              })
          //  GridView.count(
          //   mainAxisSpacing: 10,
          //   crossAxisSpacing: 10,
          //   padding: EdgeInsets.all(10),
          //   crossAxisCount: 3,
          //   physics: BouncingScrollPhysics(),
          //   children: dream11Players.map((player) {
          //     return Container(
          //       child: Text('${player.name}'),
          //       color: Colors.amber,
          //     );
          //     // return Image.network(
          //     //     player.profilPic,
          //     //   );
          //   }).toList(),
          // ),
          ),
    );
  }
}

class PlayerCard extends StatefulWidget {
  const PlayerCard({
    Key? key,
    required this.player,
    required this.run,
  }) : super(key: key);

  final Player player;
  final num run;
  

  

  @override
  State<PlayerCard> createState() => _PlayerCardState();
}

class _PlayerCardState extends State<PlayerCard> {
  @override
  Widget build(BuildContext context) {
    // return Text('${player.name}');
     return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25) 
                ) ,
                color: widget.player.backgroundColor,
                child: Container(
                  child: Row(
                    children: [
                      Image.network(
                        widget.player.profilPic,
                        width: 50,
                        height: 100,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Player Name: ${widget.player.name}'),
                        Text('Team Name: ${widget.player.team}'),
                        Text('Player runs: ${widget.run}')
                      ],)
                    ],
                  ),
                ),
              );
  }
}
