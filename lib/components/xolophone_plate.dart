// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:audioplayers/audioplayers.dart';

class XolophonePlate extends StatelessWidget {
  final int number;
  final String name;
  final Color color;

  const XolophonePlate({
    super.key,
    required this.number,
    required this.name,
    required this.color,
  });

  void playSound(int songNumber) {
    final player = AudioPlayer();
    player.play(AssetSource("note$songNumber.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(color),
          ),
          onPressed: () {
            playSound(number);
          },
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 8, 28, 98),
            ),
          ),
        ),
      ),
    );
  }
}
