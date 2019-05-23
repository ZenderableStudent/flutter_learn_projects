import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MiCard());
}

class MiCard extends StatefulWidget {
  @override
  _MiCardState createState() => _MiCardState();
}

class _MiCardState extends State<MiCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              foregroundColor: Colors.teal[900],
              backgroundImage: AssetImage('images/foto.jpg'),
            ),
            Text(
              'Karol Stumski',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'ZENDERABLE',
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontFamily: 'SourceSansPro',
                color: Colors.teal[100],
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal[100],
                height: 2.0,
                indent: 5.0,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.teal),
                    title: Text('+48 530 223 144',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                        )))),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(Icons.alternate_email, color: Colors.teal),
                    title: Text('stumski.karol@gmail.com',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                        )))),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal[100],
                height: 2.0,
                indent: 5.0,
              ),
            ),
            DicePage(),
          ],
        )),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber = 1;
  int rightNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                leftNumber = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('images/dice$leftNumber.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                rightNumber = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('images/dice$rightNumber.png'),
          ),
        ),
      ],
    );
  }
}
