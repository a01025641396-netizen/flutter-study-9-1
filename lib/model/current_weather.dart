class CurrentWeather {
  final String time;
  final int interval;
  final double temperature;
  final double windspeed;
  final int winddirection;
  final int isDay;
  final int weathercode;

  CurrentWeather({
    required this.time,
    required this.interval,
    required this.temperature,
    required this.windspeed,
    required this.winddirection,
    required this.isDay,
    required this.weathercode,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      time: json['time'] ?? '',
      interval: json['interval'] ?? 0,
      temperature: json['temperature']?.toDouble() ?? 0.0,
      windspeed: json['windspeed']?.toDouble() ?? 0.0,
      winddirection: json['winddirection'] ?? 0,
      isDay: json['is_day'] ?? 0,
      weathercode: json['weathercode'] ?? 0,
    );
  }
}
