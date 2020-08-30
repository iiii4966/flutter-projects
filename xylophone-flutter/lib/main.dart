import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void notePlayer(int noteIndex) {
    player.play('note$noteIndex.wav');
  }

  Expanded buildKey({color, soundNumber}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            notePlayer(soundNumber);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.orange, soundNumber: 2),
                buildKey(color: Colors.yellow, soundNumber: 3),
                buildKey(color: Colors.green, soundNumber: 4),
                buildKey(color: Colors.blue, soundNumber: 5),
                buildKey(color: Colors.indigo, soundNumber: 6),
                buildKey(color: Colors.purple, soundNumber: 7),
              ]),
        ),
      ),
    );
  }
}
