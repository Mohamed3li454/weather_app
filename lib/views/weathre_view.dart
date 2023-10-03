import 'package:flutter/material.dart';
import 'package:wither_app/Animations/custom_cliper.dart';

// ignore: camel_case_types
class weather_view extends StatelessWidget {
  const weather_view({super.key});

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
      body: Column(
        children: [
          const custom_cliper(),
          const SizedBox(height: 100),
          const Column(
            children: [
              Text(
                "Cairo",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "updated at 32:20",
                style: TextStyle(fontSize: 25, color: Colors.black),
              )
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/clear.png"),
                const Text(
                  "17",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Column(
                  children: [
                    Text(
                      "MAxtemp:17",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Text(
                      "Mintemp:17",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Clear",
            style: TextStyle(
                fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
