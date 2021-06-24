import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Dices(),
      ),
    ),
  );
}

var num = 1;
var num2 = 1;

void randNum() {
  var random = new Random();
  num = random.nextInt(6) + 1;
  num2 = random.nextInt(6) + 1;
}

class Dices extends StatefulWidget {
  @override
  _DicesState createState() => _DicesState();
}

class _DicesState extends State<Dices> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "images/dice$num.png",
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "images/dice$num2.png",
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randNum();
                  });
                },
                child: Card(
                  margin: EdgeInsets.only(left: 80, right: 80),
                  child: ListTile(
                    title: Center(
                      child: Text(
                        "Press to roll",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
