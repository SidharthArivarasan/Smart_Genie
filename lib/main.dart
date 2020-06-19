import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text(
            'Smart Genie!',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: AskMeAnything(),
    ),
  ),
);

class AskMeAnything extends StatefulWidget {
  @override
  _AskMeAnythingState createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int number=1;
  void ballNumber(){
    setState(() {
      number = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          ballNumber();
          print('I got clicked');
        },
        child: Image(
          image: AssetImage('images/ball$number.png'),
        ),
      ),
    );
  }
}
