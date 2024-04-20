// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 📦 Package imports:
import 'package:audioplayers/audioplayers.dart';
import 'package:google_fonts/google_fonts.dart';

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
      appBar: AppBar(
        title: Text(
          "Xylophone",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            letterSpacing: 3.5,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFF2196F3),
                Color.fromARGB(183, 60, 13, 190),
                Color.fromARGB(255, 38, 35, 231),
              ],
            ),
          ),
        ),
      ),
      body: Column(
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
    );
  }
}
