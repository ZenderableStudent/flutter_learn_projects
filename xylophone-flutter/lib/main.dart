import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buildKey({int number, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(number);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, number: 1),
                buildKey(color: Colors.orange, number: 2),
                buildKey(color: Colors.yellow, number: 3),
                buildKey(color: Colors.green, number: 4),
                buildKey(color: Colors.blue, number: 5),
                buildKey(color: Colors.indigo, number: 6),
                buildKey(color: Colors.deepPurpleAccent, number: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
