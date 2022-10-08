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
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Hello HI',
                  style: TextStyle(
                      letterSpacing: 20,
                      wordSpacing: 5,
                      fontSize: 30,
                      fontFamily: 'NotoSansJP-Regular',
                      fontWeight: FontWeight.w700),
                ),
                TextField(),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                      foregroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    autofocus: false,
                    onPressed: () {
                      print('ElevatedButton OnPress');
                    },
                    onLongPress: () {
                      print('ElevatedButton Long Pressed');
                    },
                    onHover: (e) {
                      print('ElevatedButton onHover: $e');
                    },
                    onFocusChange: (e) {
                      print('ElevatedButton onFocusChange: $e');
                    },
                    child: Text('Elevated Button')),
                ElevatedButton.icon(
                    onPressed: null,
                    icon: const Icon(Icons.menu),
                    label: Text('')),
                TextButton(
                    style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontFamily: 'NotoSansJP-Regular', fontSize: 40))),
                    onPressed: () {
                      print('On Press from text button');
                    },
                    child: const Text('Text Button')),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                  label: Text('Settings'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Outlined Button'),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.account_tree_rounded),
                  label: Text('Tree'),
                ),
                Icon(Medical.medical_micro, size: 100 , color: Colors.amberAccent,),
                Icon(Medical.medical_eyecare, size: 100, color: Colors.amberAccent,)
              ],
            )));
  }
}
