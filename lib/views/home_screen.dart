import 'package:flutter/material.dart';
import 'package:wither_app/Animations/particles_animation.dart';

// ignore: camel_case_types
class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: particle_animation(),
    );
  }
}
