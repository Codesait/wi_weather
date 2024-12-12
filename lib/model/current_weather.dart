import 'package:wi_weather_app/src/model.dart';

class Current {
  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
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
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  Current.fromJson(Map<String, dynamic> json) {
    lastUpdatedEpoch = json['last_updated_epoch'] as int?;
    lastUpdated = json['last_updated'] as String?;
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
    visKm = json['vis_km'] as double?;
    visMiles = json['vis_miles'] as double?;
    uv = json['uv'] as double?;
    gustMph = json['gust_mph'] as double?;
    gustKph = json['gust_kph'] as double?;
  }
  int? lastUpdatedEpoch;
  String? lastUpdated;
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
  double? visKm;
  double? visMiles;
  double? uv;
  double? gustMph;
  double? gustKph;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['last_updated_epoch'] = lastUpdatedEpoch;
    data['last_updated'] = lastUpdated;
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
    data['vis_km'] = visKm;
    data['vis_miles'] = visMiles;
    data['uv'] = uv;
    data['gust_mph'] = gustMph;
    data['gust_kph'] = gustKph;
    return data;
  }
}
