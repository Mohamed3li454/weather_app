import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wither_app/cubit/get_weather_cubit/get_weather_cubir.dart';
import 'package:wither_app/cubit/get_weather_cubit/get_weather_states.dart';
import 'package:wither_app/views/Searching_page.dart';
import 'package:wither_app/views/weathre_view.dart';

// ignore: camel_case_types
class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocBuilder<get_weather_cubit, weather_state>(
        builder: (context, state) {
          if (state is weather_initialstate ){
            return const searching_page();
          } else if (state is weather_loaded ){
            return weather_view(weathermodel: state.weathermodel,);
          }else {
            return const  Center(
              child: Text("ooh shit there was an fucken Error u know close this app better",
              style: TextStyle(
                  color: Colors.black, fontSize: 25, fontStyle: FontStyle.italic),),
            );
          }
        },
      )
    );
  }
}
