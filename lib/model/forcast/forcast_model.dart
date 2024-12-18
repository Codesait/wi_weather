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
class Location with _$Location {
  const factory Location({
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
    required String tzId,
    required int localtimeEpoch,
    required String localtime,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required int lastUpdatedEpoch,
    required String lastUpdated,
    required double tempC,
    required double tempF,
    required int isDay,
    required WeatherCondition condition,
    required double windMph,
    required double windKph,
    required int windDegree,
    required String windDir,
    required double pressureMb,
    required double pressureIn,
    required double precipMm,
    required double precipIn,
    required int humidity,
    required int cloud,
    required double feelslikeC,
    required double feelslikeF,
    required double windchillC,
    required double windchillF,
    required double heatindexC,
    required double heatindexF,
    required double dewpointC,
    required double dewpointF,
    required double visKm,
    required double visMiles,
    required double uv,
    required double gustMph,
    required double gustKph,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}

@freezed
class WeatherCondition with _$WeatherCondition {
  const factory WeatherCondition({
    required String text,
    required String icon,
    required int code,
  }) = _WeatherCondition;

  factory WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionFromJson(json);
}

@freezed
class Forecast with _$Forecast {
  const factory Forecast({
    required List<ForecastDay> forecastday,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}

@freezed
class ForecastDay with _$ForecastDay {
  const factory ForecastDay({
    required String date,
    required int dateEpoch,
    required Day day,
    required Astro astro,
    required List<Hour> hour,
  }) = _ForecastDay;

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);
}

@freezed
class Day with _$Day {
  const factory Day({
    required double maxtempC,
    required double maxtempF,
    required double mintempC,
    required double mintempF,
    required double avgtempC,
    required double avgtempF,
    required double maxwindMph,
    required double maxwindKph,
    required double totalprecipMm,
    required double totalprecipIn,
    required double totalsnowCm,
    required double avgvisKm,
    required double avgvisMiles,
    required int avghumidity,
    required int dailyWillItRain,
    required int dailyChanceOfRain,
    required int dailyWillItSnow,
    required int dailyChanceOfSnow,
    required WeatherCondition condition,
    required double uv,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}

@freezed
class Astro with _$Astro {
  const factory Astro({
    required String sunrise,
    required String sunset,
    required String moonrise,
    required String moonset,
    required String moonPhase,
    required int moonIllumination,
    required int isMoonUp,
    required int isSunUp,
  }) = _Astro;

  factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);
}

@freezed
class Hour with _$Hour {
  const factory Hour({
    required int timeEpoch,
    required String time,
    required double tempC,
    required double tempF,
    required int isDay,
    required WeatherCondition condition,
    required double windMph,
    required double windKph,
    required int windDegree,
    required String windDir,
    required double pressureMb,
    required double pressureIn,
    required double precipMm,
    required double precipIn,
    required double snowCm,
    required int humidity,
    required int cloud,
    required double feelslikeC,
    required double feelslikeF,
    required double windchillC,
    required double windchillF,
    required double heatindexC,
    required double heatindexF,
    required double dewpointC,
    required double dewpointF,
    required int willItRain,
    required int chanceOfRain,
    required int willItSnow,
    required int chanceOfSnow,
    required double visKm,
    required double visMiles,
    required double gustMph,
    required double gustKph,
    required double uv,
  }) = _Hour;

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
}
