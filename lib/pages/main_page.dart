// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:google_fonts/google_fonts.dart';

// 🌎 Project imports:
import '../components/xolophone_plate.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          XolophonePlate(number: 1, color: Colors.red, name: "Red"),
          XolophonePlate(number: 2, color: Colors.orange, name: "Orange"),
          XolophonePlate(number: 3, color: Colors.yellow, name: "Yellow"),
          XolophonePlate(number: 4, color: Colors.green, name: "Green"),
          XolophonePlate(number: 5, color: Colors.teal, name: "Teal"),
          XolophonePlate(number: 6, color: Colors.blue, name: "Blue"),
          XolophonePlate(number: 7, color: Colors.purple, name: "Purple"),
        ],
      ),
    );
  }
}
