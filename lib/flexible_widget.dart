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
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.amber,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Medical.medical_capsual),
                      color: Colors.blue,
                      iconSize: 30,
                    ),
                  ),
                ),
                Container(
                  color: Colors.red,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Medical.medical_dental),
                    color: Colors.blue,
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.brown,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Medical.medical_eyecare),
                      color: Colors.blue,
                      iconSize: 50,
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Medical.medical_first_aid),
                    color: Colors.blue,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.pink,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Medical.medical_lab),
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            )));
  }
}
