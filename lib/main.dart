import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
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
  late final SharedPreferences prefs;
  var count = 1;

void initState(){
  super.initState();
  intializeShardPref();
}

void intializeShardPref() async{
  prefs =await  SharedPreferences.getInstance();
   int no=prefs.getInt('Count') ?? 0;
   print('this $no');
   setState(() {
     count=no;
   });
  print('Calling');


}
  void incrementCounter() {
   
    setState(() {
      count++;
    });
     prefs.setInt('Count',count);
    print('increment counter function called: $count');
  }
   void clearCounter() {
   
    setState(() {
      count=0;
    });
    if(prefs != null){
      prefs.remove('Count');
    }
    print('Reset count $count');
  }

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    var finalButton;
    var clearButton;
    // if(Platform.isAndroid){
    //   finalButton = ElevatedButton(onPressed: incrementCounter, child: Text('Submit from android'));
    // }else{
    finalButton = CupertinoButton(
        child: Text('Increment'), onPressed: incrementCounter);
        clearButton = CupertinoButton(
        child: Text('Clear'), onPressed: clearCounter);
    // }

    return MaterialApp(
        title: 'My App vxsdfgg',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('My App'),
            ),
            body: Center(
              child: Column(
                children: [
                 Text('$count'),
                 finalButton,
                 clearButton
                ],
              ),
            )));
  }
}
