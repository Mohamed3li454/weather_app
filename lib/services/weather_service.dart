// ignore: camel_case_types
import 'package:dio/dio.dart';
import 'package:wither_app/models/weather_model.dart';

// ignore: camel_case_types
class Weather_service {
// ignore: non_constant_identifier_names
  final Dio dio;
  Weather_service({required this.dio});
  // ignore: non_constant_identifier_names
  Future<weather_model> weather_service({required String cityname}) async {
    try {
      Response response = await dio.get(
          "http://api.weatherapi.com/v1/forecast.json?key=1d1b639e3f95419784092503230310&q=$cityname&days=10&aqi=no&alerts=no");
      weather_model weathermodel = weather_model.fromjson(response.data);
      return weathermodel;
    } on DioException catch (e) {
      final String errormsg = e.response?.data["error"]["message"] ??
          "oops there was an error , try later";
      throw Exception(errormsg);
    } catch (e) {
      throw Exception("oops there was an error , try later");
    }
  }
}
