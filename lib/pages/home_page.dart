import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void playSound(int songNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource("note$songNumber.wav"),
    );
  }

  Expanded buildKey(int number, Color color, String name) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
          ),
          onPressed: () {
            playSound(number);
          },
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(1, Colors.red, "Red"),
            buildKey(2, Colors.orange, "Orange"),
            buildKey(3, Colors.yellow, "Yellow"),
            buildKey(4, Colors.green, "Green"),
            buildKey(5, Colors.teal, "Teal"),
            buildKey(6, Colors.blue, "Blue"),
            buildKey(7, Colors.purple, "Purple"),
          ],
        ),
      ),
    );
  }
}
