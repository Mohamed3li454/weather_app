import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wither_app/cubit/get_weather_cubit/get_weather_states.dart';
import 'package:wither_app/models/weather_model.dart';
import 'package:wither_app/services/weather_service.dart';

// ignore: camel_case_types
class get_weather_cubit extends Cubit<weather_state> {
  get_weather_cubit():super(weather_initialstate());
    weather_model? weathermodel;
   // ignore: non_constant_identifier_names
   get_weather({required String cityname}) async {
    try {
   weathermodel =
      await Weather_service(dio: Dio()).get_weather(cityname: cityname);
  emit(weather_loaded(weathermodel: weathermodel!));
} catch (e) {
 emit(falid_weather());
}
  }
}
