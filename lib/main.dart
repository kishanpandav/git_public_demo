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
  bool errorFlag = false;

  var loginForm =GlobalKey<FormState>();

  RegExp emailExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  

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

    String? validateEmail(String? value){
      if (value != null && emailExp.hasMatch(value)) {
        return null;
      }else{
        return "Enter valid email";
      }
    }

   String? validatePassword(String? value){
      if (value != null && value.length < 8) {
        return "password must be atleast 8 characters";
      }else{
        return null;
      }
   }

  onSubmit(){
    bool? isFormvalid = false;
    isFormvalid = loginForm.currentState?.validate();
      if(isFormvalid != null && isFormvalid){
        loginForm.currentState?.save();
      }
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

  onTextChange(String value) {
    print(value.length.toString());
    if (value.length < 5) {
      setState(() {
        errorFlag = true;
      }); 
    }else{
      setState(() {
        errorFlag = false;
      });
    }
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
                  Form(
                    key: loginForm,
                    child: 
                  Column(children: [
                    TextFormField(
                      validator: validateEmail,
                      decoration: InputDecoration(
                        hintText: ('enter email'),
                      ),
                    ),
                    TextFormField(
                      validator: validatePassword,
                      decoration: InputDecoration(
                        hintText: ('enter password')
                      ),
                    ),
                    ElevatedButton(

                      onPressed: onSubmit, 
                      child: Text('Submit')
                    )
                  ],))
                  
                  // TextField(
                  //   onChanged: onTextChange,
                  //   decoration: InputDecoration(
                  //     errorText: !errorFlag ? null : 'character should be more then five',
                  //     hintText: 'enter name'
                  //   ),

                  // )
                ],
              ),
            )));
  }
}
