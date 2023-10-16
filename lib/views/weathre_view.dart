import 'package:flutter/material.dart';
import 'package:wither_app/Animations/custom_cliper.dart';
import 'package:wither_app/models/weather_model.dart';


// ignore: camel_case_types
class weather_view extends StatelessWidget {
   const weather_view({super.key, required this.weathermodel});
  final weather_model weathermodel;
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
      body:  Container(decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.blue,Colors.orange,],begin: Alignment.topCenter,end: Alignment.bottomCenter)),
        child: Column(
          children: [
            const custom_cliper(color: Colors.black),
            const SizedBox(height: 100),
            Column(
              children: [
                Text(
                   weathermodel.cityname??"cairo",
                  style: const TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                 Text(
                  weathermodel.date.toString(),
                  style: const TextStyle(fontSize: 25, color: Colors.black),
                )
              ],
            ),
            const SizedBox(height: 9),
            Padding(
              padding: const EdgeInsets.all( 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network("https:${weathermodel.image!}"),
                  Text(
                    weathermodel.temp.toString(),
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                  ,
                   Column(
                    children: [
                      Text(
                       "MAX ${weathermodel.maxtemp}".toString(),
                        style: const TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        "MIN ${weathermodel.maxtemp}".toString(),
                        style: const TextStyle(fontSize: 18, color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
             Text(
              weathermodel.weathercontion??"",
              style: const TextStyle(
                  fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
