import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wither_app/cubit/get_weather_cubit/get_weather_cubir.dart';
import 'package:wither_app/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => get_weather_cubit(),
      child: const MaterialApp(
        home: Home_screen(),
      ),
    );
  }
}

//mm
