import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/model/person.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/rendering.dart';
import 'Medical_icons.dart';
import 'database.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final LatLng suratCoord = const LatLng(21.1, 72.83);
  late GoogleMapController mapController;
  late final SharedPreferences prefs;
  var count = 1;
  bool errorFlag = false;
  late Person editPersonData = Person(name: '', city: ''); 

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

editPerson(Person per){
  nameController.text=per.name;
  cityController.text=per.city;
  setState(() {
    editPersonData =per;
  });


}
  
getAllPersons() async {
    List<Person> personData=await dbh.retrievePersons();
   setState(() {
    retrieve=personData;
    });
}

onDelete(int id)async{
int res = await dbh.deletePerson(id);
if(res == 1){
  getAllPersons();
}
print(res);
}
  


  onSubmit() async{
   
    Person person=Person(name: nameController.text, city: cityController.text);
    print(person.name);
    if (editPersonData.id != 0 ){
      int res = await dbh.updatePerson(person,editPersonData.id);
      setState(() {
          editPersonData = Person(name: '', city: '');
      });
    
    }else{
     var res=dbh.insertPerson(person);
  
    print(res);

    }
     nameController.clear();
     cityController.clear();
  
  getAllPersons();
  // List<Person> personData=await dbh.retrievePersons();
  //  setState(() {
  //   retrieve=personData;
  //   });

      
  print("Number of records ${retrieve.length}");
  }

  

 _onMapCreated(GoogleMapController controller){
  mapController = controller;
 }

_focusOnMumbai(){
  mapController.animateCamera(
    CameraUpdate.newCameraPosition(
      const CameraPosition(target: LatLng(19.076, 72.87),
      zoom: 11)
    )
    );
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
            body: GoogleMap(initialCameraPosition: CameraPosition(
              target: suratCoord,
              zoom: 15),
              onMapCreated: _onMapCreated,
              mapType: MapType.normal,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              trafficEnabled: true,
              markers: <Marker>{
                Marker(markerId: MarkerId("Surat"),
                position: suratCoord,
                infoWindow: InfoWindow(title: "Surat City"),
                draggable: true,
                onDragEnd: (LatLng coord){
                  print(coord.latitude);
                  print(coord.longitude);
                },)
              },),
              floatingActionButton: FloatingActionButton(onPressed:_focusOnMumbai,
              child: Icon(Icons.location_city),),
            ),
            );
  }
}
