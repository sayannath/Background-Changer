import 'package:flutter/material.dart';
import 'dart:math'; // To randomise the background colour

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Background Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Background Changer'),
          elevation: 10.0, //Gives elevation to the App Bar
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.blue,
    Colors.cyan,
    Colors.brown,
    Colors.teal,
    Colors.deepOrange,
    Colors.blueGrey,
    Colors.transparent,
    Colors.purple,
    Colors.pink,
    Colors.lime,
  ];

  var colorsButton = [
    Colors.blueGrey,
    Colors.transparent,
    Colors.purple,
    Colors.pink,
    Colors.lime,
    Colors.amber,
    Colors.blue,
    Colors.cyan,
    Colors.brown,
    Colors.teal,
    Colors.deepOrange,
  ];

  var currentColor = Colors.white;
  var currentColorButton = Colors.black;

  setRandomValue() {
    var random_235 = Random().nextInt(colors.length); //Taking random integers to change the color.

    setState(() {
      currentColor = colors[random_235];
      currentColorButton = colorsButton[random_235];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: currentColorButton,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text(
            'Change It !',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          onPressed: setRandomValue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0), 
          ),
        ),
      ),
    );
  }
}
