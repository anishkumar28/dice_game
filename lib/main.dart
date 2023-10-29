import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    )
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 5;
  int rightDicenumber = 2;

  void changeDicenumber() {
    setState(() {
      leftDicenumber = Random().nextInt(5) + 1;
      rightDicenumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: (){
                    changeDicenumber();
                  },
                  child: Image.asset('images/dice$leftDicenumber.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                    changeDicenumber();
                  },
                  child: Image.asset('images/dice$rightDicenumber.png')),
            ),
          ),
        ],
      ),
    );

  }
}
