import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void _playSound(int index) {
    player.play('note$index.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildExpanded(Colors.red, 1),
              buildExpanded(Colors.orange, 2),
              buildExpanded(Colors.yellow, 3),
              buildExpanded(Colors.green, 4),
              buildExpanded(Colors.teal, 5),
              buildExpanded(Colors.blue, 6),
              buildExpanded(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildExpanded(Color color, int index) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          _playSound(index);
        },
      ),
    );
  }
}
