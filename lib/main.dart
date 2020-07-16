import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void audioPlayer (int number) {
    final player1 = AudioCache();
    player1.play('note$number.wav');
  }

  Expanded buildKey ({Color thisColor, int songNum}) {
    return Expanded(
      child: FlatButton(
        color: thisColor,
        onPressed: () {
          audioPlayer(songNum);
        },
      ),
    );
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
              buildKey (thisColor: Colors.red, songNum: 1),
              buildKey (thisColor: Colors.orange, songNum: 2),
              buildKey (thisColor: Colors.yellow, songNum: 3),
              buildKey (thisColor: Colors.green, songNum: 4),
              buildKey (thisColor: Colors.blue, songNum: 5),
              buildKey (thisColor: Colors.indigo, songNum: 6),
              buildKey (thisColor: Colors.purple, songNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
