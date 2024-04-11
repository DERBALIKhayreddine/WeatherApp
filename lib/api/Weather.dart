class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  int? pressure;

  Weather({
    this.cityName,
    this.temp,
    this.feels_like,
    this.humidity,
    this.pressure,
    this.wind,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    humidity = json["main"]["humidity"]; // Fix typo
    feels_like = json["main"]["feels_like"]; // Fix typo
    pressure = json["main"]["pressure"];
  }
}
