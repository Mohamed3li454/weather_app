import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:wither_app/Animations/custom_cliper.dart';
import 'package:wither_app/models/weather_model.dart';
import 'package:wither_app/widgets/searching_widget.dart';
// import 'package:animated_button/animated_button.dart';
// import 'package:wither_app/views/searching_view.dart';

// ignore: camel_case_types
class searching_page extends StatefulWidget {
  const searching_page({super.key});

  @override
  State<searching_page> createState() => _searching_pageState();
}

// ignore: camel_case_types
class _searching_pageState extends State<searching_page> {
  weather_model? weathermodel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Center(
          child: Text(
            "Weather App",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontStyle: FontStyle.italic),
          ),
        ),
      ),
      // backgroundColor: Color.fromARGB(255, 78, 72, 58),
      // ignore: avoid_unnecessary_containers
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const custom_cliper(),
          const SizedBox(
            height: 1,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "There's no Action 😔",
                      speed: const Duration(milliseconds: 90),
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TypewriterAnimatedText(
                      'Start searching now 🔍',
                      speed: const Duration(milliseconds: 70),
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                  displayFullTextOnTap: true,
                  stopPauseOnTap: false,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          const searching_widget(),
        ],
      ),
    );
  }
}
