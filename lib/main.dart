import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red[900],
                onPressed: () {
                  playsound(1);
                },
              ),
              FlatButton(
                color: Colors.teal,
                onPressed: () {
                  playsound(2);
                },
              ),
              FlatButton(
                color: Colors.yellow[700],
                onPressed: () {
                  playsound(3);
                },
              ),
              FlatButton(
                color: Colors.orange[700],
                onPressed: () {
                  playsound(4);
                },
              ),
              FlatButton(
                color: Colors.deepPurple[300],
                onPressed: () {
                  playsound(5);
                },
              ),
              FlatButton(
                color: Colors.blueAccent[700],
                onPressed: () {
                  playsound(6);
                },
              ),
              FlatButton(
                color: Colors.pink[300],
                onPressed: () {
                  playsound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
