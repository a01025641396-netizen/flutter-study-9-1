class Weather {
  final double latitude; // 위도
  final double longitude; // 경도
  final double generationtimeMs; // 데이터 생성 소요 시간 (ms)
  final int utcOffsetSeconds; // UTC 시간대 오프셋 (초 단위)
  final String timezone; // 시간대 명칭 (예: GMT)
  final String timezoneAbbreviation; // 시간대 약어
  final double elevation; // 고도
  final CurrentWeatherUnits currentWeatherUnits; // 날씨 단위 정보 객체
  final CurrentWeather currentWeather; // 현재 날씨 수치 객체

  // Weather.fromJson: 외부에서 전달받은 Map 데이터를 Weather 인스턴스로 변환하는 생성자
  Weather.fromJson(Map<String, dynamic> json)
    : latitude = (json['latitude'] as num).toDouble(),
      longitude = (json['longitude'] as num).toDouble(),
      // JSON의 숫자가 int/double 혼용될 수 있으므로 num으로 받아 toDouble() 처리
      generationtimeMs = (json['generationtime_ms'] as num).toDouble(),
      utcOffsetSeconds = json['utc_offset_seconds'] as int,
      timezone = json['timezone'] as String,
      timezoneAbbreviation = json['timezone_abbreviation'] as String,
      elevation = (json['elevation'] as num).toDouble(),
      // 하위 객체 생성 시 해당 key의 Map 데이터를 다시 각 클래스의 fromJson으로 전달
      currentWeatherUnits = CurrentWeatherUnits.fromJson(
        json['current_weather_units'],
      ),
      currentWeather = CurrentWeather.fromJson(json['current_weather']);
}

class CurrentWeatherUnits {
  final String time; // 시간 형식
  final String interval; // 갱신 간격 단위
  final String temperature; // 온도 단위 (예: °C)
  final String windspeed; // 풍속 단위 (예: km/h)
  final String winddirection; // 풍향 단위 (예: °)
  final String isDay; // 낮/밤 구분 코드 단위
  final String weathercode; // 기상 코드 명칭

  CurrentWeatherUnits.fromJson(Map<String, dynamic> json)
    : time = json['time'] as String,
      interval = json['interval'] as String,
      temperature = json['temperature'] as String,
      windspeed = json['windspeed'] as String,
      winddirection = json['winddirection'] as String,
      isDay = json['is_day'] as String,
      weathercode = json['weathercode'] as String;
}

class CurrentWeather {
  final String time; // 측정 시간 (ISO8601 형식)
  final int interval; // 측정 간격 (초)
  final double temperature; // 현재 온도
  final double windspeed; // 현재 풍속
  final int winddirection; // 현재 풍향 (도 단위)
  final int isDay; // 낮일 경우 1, 밤일 경우 0
  final int weathercode; // 기상 상태 코드 (WMO 기준)

  CurrentWeather.fromJson(Map<String, dynamic> json)
    : time = json['time'] as String,
      interval = json['interval'] as int,
      // API 결과값이 정수형(-4)으로 올 경우를 대비해 toDouble()로 안전하게 변환
      temperature = (json['temperature'] as num).toDouble(),
      windspeed = (json['windspeed'] as num).toDouble(),
      winddirection = json['winddirection'] as int,
      isDay = json['is_day'] as int,
      weathercode = json['weathercode'] as int;
}
