import 'package:flutter_practice_1/model/current_weather.dart';
import 'package:flutter_practice_1/model/current_weather_units.dart';

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
