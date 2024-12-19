// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

@freezed
class ForecastResponse with _$ForecastResponse {
  const factory ForecastResponse({
    required Location location,
    required CurrentWeather current,
    required Forecast forecast,
  }) = _ForecastResponse;

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);
}

@freezed
abstract class Location with _$Location {
  const factory Location({
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
    required String tz_id,
    required int localtime_epoch,
    required String localtime,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
abstract class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required int last_updated_epoch,
    required String last_updated,
    required double temp_c,
    required double temp_f,
    required int is_day,
    required WeatherCondition condition,
    required double wind_mph,
    required double wind_kph,
    required int wind_degree,
    required String wind_dir,
    required double pressure_mb,
    required double pressure_in,
    required double precip_mm,
    required double precip_in,
    required int humidity,
    required int cloud,
    required double feelslike_c,
    required double feelslike_f,
    required double windchill_c,
    required double windchill_f,
    required double heatindex_c,
    required double heatindex_f,
    required double dewpoint_c,
    required double dewpoint_f,
    required double vis_km,
    required double vis_miles,
    required double uv,
    required double gust_mph,
    required double gust_kph,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}

@freezed
abstract class WeatherCondition with _$WeatherCondition {
  const factory WeatherCondition({
    required String text,
    required String icon,
    required int code,
  }) = _WeatherCondition;

  factory WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionFromJson(json);
}

@freezed
abstract class Forecast with _$Forecast {
  const factory Forecast({
    required List<ForecastDay> forecastday,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}

@freezed
abstract class ForecastDay with _$ForecastDay {
  const factory ForecastDay({
    required String date,
    required int date_epoch,
    required Day day,
    required Astro astro,
    required List<Hour> hour,
  }) = _ForecastDay;

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);
}

@freezed
abstract class Day with _$Day {
  const factory Day({
    required double maxtemp_c,
    required double maxtemp_f,
    required double mintemp_c,
    required double mintemp_f,
    required double avgtemp_c,
    required double avgtemp_f,
    required double maxwind_mph,
    required double maxwind_kph,
    required double totalprecip_mm,
    required double totalprecip_in,
    required double totalsnow_cm,
    required double avgvis_km,
    required double avgvis_miles,
    required int avghumidity,
    required int daily_will_it_rain,
    required int daily_chance_of_rain,
    required int daily_will_it_snow,
    required int daily_chance_of_snow,
    required WeatherCondition condition,
    required double uv,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}

@freezed
abstract class Astro with _$Astro {
  const factory Astro({
    required String sunrise,
    required String sunset,
    required String moonrise,
    required String moonset,
    required String moon_phase,
    required int moon_illumination,
    required int is_moon_up,
    required int is_sun_up,
  }) = _Astro;

  factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);
}

@freezed
abstract class Hour with _$Hour {
  const factory Hour({
    required int time_epoch,
    required String time,
    required double temp_c,
    required double temp_f,
    required int is_day,
    required WeatherCondition condition,
    required double wind_mph,
    required double wind_kph,
    required int wind_degree,
    required String wind_dir,
    required double pressure_mb,
    required double pressure_in,
    required double precip_mm,
    required double precip_in,
    required double snow_cm,
    required int humidity,
    required int cloud,
    required double feelslike_c,
    required double feelslike_f,
    required double windchill_c,
    required double windchill_f,
    required double heatindex_c,
    required double heatindex_f,
    required double dewpoint_c,
    required double dewpoint_f,
    required int will_it_rain,
    required int chance_of_rain,
    required int will_it_snow,
    required int chance_of_snow,
    required double vis_km,
    required double vis_miles,
    required double gust_mph,
    required double gust_kph,
    required double uv,
  }) = _Hour;

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
}
