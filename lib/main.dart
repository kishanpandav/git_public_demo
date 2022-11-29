import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/model/person.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/rendering.dart';
import 'Medical_icons.dart';
import 'database.dart';


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
  TextEditingController nameController=TextEditingController();
  TextEditingController cityController=TextEditingController();

  RegExp emailExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  DatabaseHelper dbh=DatabaseHelper();
 late List<Person> retrieve=[];

void initState(){
  super.initState();
  dbh.initDb();
  
  
 
}


  

  


  onSubmit() async{
   
    Person person=Person(name: nameController.text, city: cityController.text);
    print(person.name);
  var res=dbh.insertPerson(person);
  print(res);
  List<Person> personData=await dbh.retrievePersons();
   setState(() {
    retrieve=personData;
    });

      
  print("Number of records ${retrieve.length}");
  }

  

 

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
   
    // if(Platform.isAndroid){
    //   finalButton = ElevatedButton(onPressed: incrementCounter, child: Text('Submit from android'));
    // }else{
    
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
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: ('enter name'),
                      ),
                    ),
                    TextFormField(
                      controller: cityController,
                      decoration: InputDecoration(
                        hintText: ('enter city')
                      ),
                    ),
                    ElevatedButton(

                      onPressed: onSubmit, 
                      child: Text('Submit')
                    )
                  ],)),

                  Expanded(child: ListView.builder(
                    itemCount: retrieve.length,
                    itemBuilder: (context, index) {
                    Person per=retrieve[index];
                    return ListTile(
                      leading: Text("${per.id}"),
                      title: Text("Name : ${per.name}"),
                      subtitle: Text("City :${per.city}"),
                      trailing: Container(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                            IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                          ],
                        ),
                      ),
                    );
                  },))
                 
                ],
              ),
            )));
  }
}
