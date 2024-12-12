import 'package:wi_weather_app/src/model.dart';

class Hour {
  Hour({
    this.timeEpoch,
    this.time,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.willItRain,
    this.chanceOfRain,
    this.willItSnow,
    this.chanceOfSnow,
    this.visKm,
    this.visMiles,
    this.gustMph,
    this.gustKph,
    this.uv,
  });

  Hour.fromJson(Map<String, dynamic> json) {
    timeEpoch = json['time_epoch'] as int?;
    time = json['time'] as String?;
    tempC = json['temp_c'] as double?;
    tempF = json['temp_f'] as double?;
    isDay = json['is_day'] as int?;
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'] as Map<String, dynamic>)
        : null;
    windMph = json['wind_mph'] as double?;
    windKph = json['wind_kph'] as double?;
    windDegree = json['wind_degree'] as int?;
    windDir = json['wind_dir'] as String?;
    pressureMb = json['pressure_mb'] as double?;
    pressureIn = json['pressure_in'] as double?;
    precipMm = json['precip_mm'] as double?;
    precipIn = json['precip_in'] as double?;
    humidity = json['humidity'] as int?;
    cloud = json['cloud'] as int?;
    feelslikeC = json['feelslike_c'] as double?;
    feelslikeF = json['feelslike_f'] as double?;
    windchillC = json['windchill_c'] as double?;
    windchillF = json['windchill_f'] as double?;
    heatindexC = json['heatindex_c'] as double?;
    heatindexF = json['heatindex_f'] as double?;
    dewpointC = json['dewpoint_c'] as double?;
    dewpointF = json['dewpoint_f'] as double?;
    willItRain = json['will_it_rain'] as int?;
    chanceOfRain = json['chance_of_rain'] as int?;
    willItSnow = json['will_it_snow'] as int?;
    chanceOfSnow = json['chance_of_snow'] as int?;
    visKm = json['vis_km'] as double?;
    visMiles = json['vis_miles'] as double?;
    gustMph = json['gust_mph'] as double?;
    gustKph = json['gust_kph'] as double?;
    uv = json['uv'] as double?;
  }
  int? timeEpoch;
  String? time;
  double? tempC;
  double? tempF;
  int? isDay;
  Condition? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  double? pressureMb;
  double? pressureIn;
  double? precipMm;
  double? precipIn;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? feelslikeF;
  double? windchillC;
  double? windchillF;
  double? heatindexC;
  double? heatindexF;
  double? dewpointC;
  double? dewpointF;
  int? willItRain;
  int? chanceOfRain;
  int? willItSnow;
  int? chanceOfSnow;
  double? visKm;
  double? visMiles;
  double? gustMph;
  double? gustKph;
  double? uv;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['time_epoch'] = timeEpoch;
    data['time'] = time;
    data['temp_c'] = tempC;
    data['temp_f'] = tempF;
    data['is_day'] = isDay;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    data['wind_mph'] = windMph;
    data['wind_kph'] = windKph;
    data['wind_degree'] = windDegree;
    data['wind_dir'] = windDir;
    data['pressure_mb'] = pressureMb;
    data['pressure_in'] = pressureIn;
    data['precip_mm'] = precipMm;
    data['precip_in'] = precipIn;
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['feelslike_f'] = feelslikeF;
    data['windchill_c'] = windchillC;
    data['windchill_f'] = windchillF;
    data['heatindex_c'] = heatindexC;
    data['heatindex_f'] = heatindexF;
    data['dewpoint_c'] = dewpointC;
    data['dewpoint_f'] = dewpointF;
    data['will_it_rain'] = willItRain;
    data['chance_of_rain'] = chanceOfRain;
    data['will_it_snow'] = willItSnow;
    data['chance_of_snow'] = chanceOfSnow;
    data['vis_km'] = visKm;
    data['vis_miles'] = visMiles;
    data['gust_mph'] = gustMph;
    data['gust_kph'] = gustKph;
    data['uv'] = uv;
    return data;
  }
}
