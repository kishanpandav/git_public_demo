import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/rendering.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var count = 1;

  void incrementCounter(){
    setState(() {
    count++;
      
    });
    print(
      'increment counter function called: $count'
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    var finalButton;
    if(Platform.isAndroid){
      finalButton = ElevatedButton(onPressed: incrementCounter, child: Text('Submit from android'));
    }else{
      finalButton = CupertinoButton(child: Text('Submit from ios'), onPressed: incrementCounter);
    }

    return MaterialApp(
      title: 'My App vxsdfgg',
      home: Scaffold(
        appBar: AppBar(title:const Text('My App') ,),
        body: Container(
          width: double.infinity,
          // margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
            border: Border.all(width: 20, color: Colors.blue),
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(50))
          ) ,
          child: ElevatedButton(onPressed: (){}, child: Text('This is button')),
        )
        )

      
    );
  }
}
