import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: XylophonePage(),
      ),
    ));

class XylophonePage extends StatefulWidget {
  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {

  Expanded buildKey({Color color, int note}) {
    void playNote (int note){
      final player = AudioCache();
      player.play('note$note.wav');
    }
    return Expanded(
      child: RaisedButton(
        color: color,
        onPressed: () {
          playNote(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          buildKey(color: Colors.red, note: 7),
          buildKey(color: Colors.orange, note: 6),
          buildKey(color: Colors.yellow, note: 5),
          buildKey(color: Colors.green, note:4),
          buildKey(color: Colors.teal, note: 3),
          buildKey(color: Colors.blue, note: 2),
          buildKey(color: Colors.purple, note: 1),
        ],
      ),
    );
  }
}