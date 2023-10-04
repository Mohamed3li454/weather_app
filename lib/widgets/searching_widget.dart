import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wither_app/models/weather_model.dart';
import 'package:wither_app/services/weather_service.dart';
import 'package:wither_app/views/weathre_view.dart';

// ignore: camel_case_types
class searching_widget extends StatelessWidget {
  const searching_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          onSubmitted: (value) async {
            weathermodel =
                await Weather_service(dio: Dio()).get_weather(cityname: value);
            // ignore: use_build_context_synchronously
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const weather_view();
              },
            ));
          },
          decoration: InputDecoration(
            label: const Text("Search"),
            suffixIcon: const Icon(Icons.search),
            hintText: "Enter City Name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}

weather_model? weathermodel;
