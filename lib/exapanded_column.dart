import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/rendering.dart';
import 'Medical_icons.dart';

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
    var finalButton;
    // if(Platform.isAndroid){
    //   finalButton = ElevatedButton(onPressed: incrementCounter, child: Text('Submit from android'));
    // }else{
    finalButton = CupertinoButton(
        child: Text('Submit from ios'), onPressed: incrementCounter);
    // }

    return MaterialApp(
        title: 'My App vxsdfgg',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('My App'),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Text('This is text 1'),
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  flex: 20,
                  child: Container(
                    child: Text('This is text 2'),
                    color: Colors.red,
                  ),
                ),
                Text('This is text 3'),
                Icon(Medical.medical_capsual),
                Expanded(
                  flex: 20,
                  child: Container(
                    color: Colors.black12,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Medical.medical_eyecare),
                    ),
                  ),
                )
              ],
            )));
  }
}
