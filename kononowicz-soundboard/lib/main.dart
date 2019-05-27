import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          toolbarOpacity: 1.0,
          title: Center(
            child: Text('Major Kononowicz Soundboard'),
          ),
        ),
        body: Cholera(),
      ),
    );
  }
}

class Cholera extends StatefulWidget {
  @override
  _CholeraState createState() => _CholeraState();
}

class _CholeraState extends State<Cholera> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpg'), fit: BoxFit.cover)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: RaisedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('grill_majora.mp3');
                      },
                      child: Text('CHOLERA\n  JASNA'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: RaisedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('rosol.mp3');
                      },
                      child: Text('PIWO TO \n    JAK \n  ROSÓŁ'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: RaisedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('cholera.mp3');
                      },
                      child: Text('       O\nCHOLERA'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: RaisedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('zamknij.mp3');
                      },
                      child: Text('ZAMKNIJ \n TĘ DUPĘ \n  KURWA'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: RaisedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('srasz.mp3');
                      },
                      child: Text(' ILE RAZY \n      SIĘ\nZESRAŁEŚ'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: RaisedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('przepraszam.mp3');
                      },
                      child: Text(
                          '     PRZE\nPRASZAM\n   ŻE TAK\n   POWIE\n DZIAŁEM'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: RaisedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('szanowne.mp3');
                      },
                      child: Text('SZANOWNE\n PAŃSTWO\n  KOCHANI\n       MOI'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: RaisedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('plot.mp3');
                      },
                      child: Text('     PŁOT\n  WYŻSZY\n OD MEGO    '),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: RaisedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('ful.mp3');
                      },
                      child: Text('FUL FUL FUL'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
