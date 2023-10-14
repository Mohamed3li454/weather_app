import 'package:flutter/material.dart';
import 'package:wither_app/views/Searching_page.dart';
import 'package:wither_app/views/weathre_view.dart';
import 'package:wither_app/widgets/searching_widget.dart';

// ignore: camel_case_types
class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: searching_page() ,
    );
  }
}
