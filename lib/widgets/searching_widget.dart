import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wither_app/cubit/get_weather_cubit/get_weather_cubir.dart';

// ignore: camel_case_types
class searching_widget extends StatefulWidget {
  const searching_widget({super.key,});
  @override
  State<searching_widget> createState() => _searching_widgetState();
}

// ignore: camel_case_types
class _searching_widgetState extends State<searching_widget> {
    
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          onSubmitted: (value) async {
         var getweathercubit = BlocProvider.of<get_weather_cubit>(context);
         getweathercubit.get_weather(cityname: value);
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

