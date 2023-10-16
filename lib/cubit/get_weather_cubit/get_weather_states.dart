import 'package:wither_app/models/weather_model.dart';

// ignore: camel_case_types
class weather_state{}
// ignore: camel_case_types
class weather_initialstate extends weather_state{}
// ignore: camel_case_types
class weather_loaded extends weather_state{
  final weather_model weathermodel;

  weather_loaded({required this.weathermodel});
}
// ignore: camel_case_types
class falid_weather extends weather_state{}