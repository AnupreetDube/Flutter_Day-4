import 'package:flutter/material.dart';
MyApp(){  
//1
  var x = Text(
    "Day-4 App",
    textAlign: TextAlign.center,
    textDirection: TextDirection.ltr ,
    style: TextStyle(fontWeight: FontWeight.bold),);
//PressingEvent
press1(){
  print("Pressed 1st Icon");
}
press2(){
  print("Pressed 2nd  Icon");
}
//Image
var url = 'https://raw.githubusercontent.com/AnupreetDube/Flutter_Day-4/master/7-Best-work-from-home-software-700x545.png';
// ignore: non_constant_identifier_names
var MyImage = Image.network(
  url,
  width: double.infinity ,
  height: double.infinity,
);
//Icon
var icon1 = Icon(
      Icons.favorite,
      color: Colors.pinkAccent.shade700,
);
var icon2 = Icon(
      Icons.cake,
      color: Colors.deepPurpleAccent ,
);

//Buttons
var icon1button = IconButton(
          icon: icon1,
          tooltip: '1st Icon',
          onPressed: press1 );
var icon2button = IconButton(
          icon: icon2,
          tooltip: '2nd Icon',
          onPressed: press2 );

//AppBar
// ignore: non_constant_identifier_names
var MyAppBar = AppBar(
  title: x,
  backgroundColor: Colors.amberAccent.shade700 ,
  leading: MyImage,
  actions: <Widget>[icon1button,icon2button,],
);
//HOME
var myhome = Scaffold(
  appBar : MyAppBar,
  body : MyImage ,
  backgroundColor: Colors.lightBlue[300],
);

//FINAL DESIGN
var design = MaterialApp(
  home : myhome,
  debugShowCheckedModeBanner: false,
) ;

return design;
} 