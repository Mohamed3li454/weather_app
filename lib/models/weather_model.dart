// ignore: camel_case_types
class weather_model {
  final String? cityname;
  final String? date;
  final num? temp;
  final String? image;
  final double? maxtemp;
  final double? mintemp;
  final String? weathercontion;

  weather_model({
    required this.cityname,
    required this.date,
    required this.temp,
    required this.image,
    required this.maxtemp,
    required this.mintemp,
    required this.weathercontion,
  });

  factory weather_model.fromjson(json) {
    return weather_model(
      cityname: json["location"]["name"],
      date: json["current"]["last_updated"],
      temp: json["current"]["temp_c"],
      image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
      maxtemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      mintemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      weathercontion: json["forecast"]["forecastday"][0]["day"]["condition"]
          ["text"],
    );
  }
}
