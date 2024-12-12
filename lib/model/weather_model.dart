import 'package:wi_weather_app/src/model.dart';

class Weather {

  Weather({this.location, this.current, this.forecast});

  Weather.fromJson(Map<String, dynamic> json) {
    location =
        json['location'] != null ? Location.fromJson(json['location'] as Map<String,dynamic>) : null;
    current =
        json['current'] != null ? Current.fromJson(json['current'] as Map<String, dynamic>) : null;
    forecast =
        json['forecast'] != null ? Forecast.fromJson(json['forecast'] as Map<String, dynamic>) : null;
  }
  Location? location;
  Current? current;
  Forecast? forecast;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (location != null) {
      data['location'] = location!.toJson();
    }
    if (current != null) {
      data['current'] = current!.toJson();
    }
    if (forecast != null) {
      data['forecast'] = forecast!.toJson();
    }
    return data;
  }
}
