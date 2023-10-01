import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_button/animated_button.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:wither_app/views/searching_view.dart';

// ignore: camel_case_types
class particle_animation extends StatefulWidget {
  const particle_animation({super.key});

  @override
  State<particle_animation> createState() => _particle_animationState();
}

// ignore: camel_case_types
class _particle_animationState extends State<particle_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Text(
            "Wither App",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontStyle: FontStyle.italic),
          ),
        ),
      ),
      // backgroundColor: Color.fromARGB(255, 78, 72, 58),
      // ignore: avoid_unnecessary_containers
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 200,
          ),
          Center(
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
          const SizedBox(height: 200),
          Center(
            child: AnimatedButton(
              // ignore: sort_child_properties_last
              child: const Text(
                'Searching 🔍',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const searching_view();
                  },
                ));
              },
              enabled: true,
              shadowDegree: ShadowDegree.light,
            ),
          ),
        ],
      ),
    );
  }
}
