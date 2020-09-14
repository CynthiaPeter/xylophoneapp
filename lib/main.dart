import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black45,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(color: Colors.purple[300], soundNumber: 1),
                  buildKey(color: Colors.blue[300], soundNumber: 2),
                  buildKey(color: Colors.amber[300], soundNumber: 3),
                  buildKey(color: Colors.green[400], soundNumber: 4),
                  buildKey(color: Colors.yellow[300], soundNumber: 5),
                  buildKey(color: Colors.red[400], soundNumber: 6),
                  buildKey(color: Colors.orange[300], soundNumber: 7),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
