import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Dice App'),
          backgroundColor: Colors.lightGreen,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget{
  @override
  _DicePageState createState() => _DicePageState();
}


class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {

      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Row(
     children: <Widget>[
       Expanded(
          child:FlatButton(
            onPressed: (){
              changeDiceFace();
            },
            padding: const EdgeInsets.all(16.0),
        child: Image.asset('images/dice$leftDiceNumber.png'),
          ),

    ),
    Expanded(
      child:FlatButton(
        onPressed: (){
          changeDiceFace();
        },

    child:Image.asset('images/dice$rightDiceNumber.png'),
          ),
    ),
    ],
    ),

    );




  }
}
