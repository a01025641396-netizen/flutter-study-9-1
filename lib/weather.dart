class Weather {
  final double latitude;
  final double longitude;
  final double generationTimeMs;
  final int utcOffsetSeconds;
  final String timezone;
  final String timezoneAbbreviation;
  final double elevation;
  final CurrentWeatherUnits currentWeatherUnits;
  final CurrentWeather currentWeather;

  Weather({
    required this.latitude,
    required this.longitude,
    required this.generationTimeMs,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.currentWeatherUnits,
    required this.currentWeather,
  });

  // JSON 데이터를 객체로 변환하는 네임드 생성자
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      latitude: json['latitude']?.toDouble() ?? 0.0,
      longitude: json['longitude']?.toDouble() ?? 0.0,
      generationTimeMs: json['generationtime_ms']?.toDouble() ?? 0.0,
      utcOffsetSeconds: json['utc_offset_seconds'] ?? 0,
      timezone: json['timezone'] ?? '',
      timezoneAbbreviation: json['timezone_abbreviation'] ?? '',
      elevation: json['elevation']?.toDouble() ?? 0.0,
      currentWeatherUnits: CurrentWeatherUnits.fromJson(
        json['current_weather_units'],
      ),
      currentWeather: CurrentWeather.fromJson(json['current_weather']),
    );
  }
}

class CurrentWeatherUnits {
  final String time;
  final String interval;
  final String temperature;
  final String windspeed;
  final String winddirection;
  final String isDay;
  final String weathercode;

  CurrentWeatherUnits({
    required this.time,
    required this.interval,
    required this.temperature,
    required this.windspeed,
    required this.winddirection,
    required this.isDay,
    required this.weathercode,
  });

  factory CurrentWeatherUnits.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherUnits(
      time: json['time'] ?? '',
      interval: json['interval'] ?? '',
      temperature: json['temperature'] ?? '',
      windspeed: json['windspeed'] ?? '',
      winddirection: json['winddirection'] ?? '',
      isDay: json['is_day'] ?? '',
      weathercode: json['weathercode'] ?? '',
    );
  }
}

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
