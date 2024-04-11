import 'package:tp3/api/Weather.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherApiClient {
  Future<Weather> getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=d0670e1d89c523185cab69b9b70681b2&units=metric");

    try {
      var response = await http.get(endpoint);
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        return Weather.fromJson(body);
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      throw Exception('Failed to connect to the weather API');
    }
  }
}
