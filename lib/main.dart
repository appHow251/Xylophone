import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red[900],
                onPressed: () {
                  final player = AudioCache();
                  player.play('note1.wav');
                },
              ),
              FlatButton(
                color: Colors.teal,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note2.wav');
                },
              ),
              FlatButton(
                color: Colors.yellow[700],
                onPressed: () {
                  final player = AudioCache();
                  player.play('note3.wav');
                },
              ),
              FlatButton(
                color: Colors.orange[700],
                onPressed: () {
                  final player = AudioCache();
                  player.play('note4.wav');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
