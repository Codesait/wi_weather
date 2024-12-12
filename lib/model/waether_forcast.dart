import 'package:wi_weather_app/src/model.dart';

class Forecast {
  Forecast({this.forecastday});

  Forecast.fromJson(Map<String, dynamic> json) {
    if (json['forecastday'] != null) {
      forecastday = <Forecastday>[];
      json['forecastday'].forEach((Map<String, dynamic> v) {
        forecastday!.add(Forecastday.fromJson(v));
      });
    }
  }
  List<Forecastday>? forecastday;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (forecastday != null) {
      data['forecastday'] = forecastday!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Forecastday {
  Forecastday({
    this.date,
    this.dateEpoch,
    this.day,
    this.astro,
    this.hour,
  });

  Forecastday.fromJson(Map<String, dynamic> json) {
    date = json['date'] as String?;
    dateEpoch = json['date_epoch'] as int?;
    day = json['day'] != null
        ? Day.fromJson(json['day'] as Map<String, dynamic>)
        : null;
    astro = json['astro'] != null
        ? Astro.fromJson(json['astro'] as Map<String, dynamic>)
        : null;
    if (json['hour'] != null) {
      hour = <Hour>[];
      json['hour'].forEach((Map<String, dynamic> v) {
        hour!.add(Hour.fromJson(v));
      });
    }
  }
  String? date;
  int? dateEpoch;
  Day? day;
  Astro? astro;
  List<Hour>? hour;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['date'] = date;
    data['date_epoch'] = dateEpoch;
    if (day != null) {
      data['day'] = day!.toJson();
    }
    if (astro != null) {
      data['astro'] = astro!.toJson();
    }
    if (hour != null) {
      data['hour'] = hour!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Day {
  Day({
    this.maxtempC,
    this.maxtempF,
    this.mintempC,
    this.mintempF,
    this.avgtempC,
    this.avgtempF,
    this.maxwindMph,
    this.maxwindKph,
    this.totalprecipMm,
    this.totalprecipIn,
    this.totalsnowCm,
    this.avgvisKm,
    this.avgvisMiles,
    this.avghumidity,
    this.dailyWillItRain,
    this.dailyChanceOfRain,
    this.dailyWillItSnow,
    this.dailyChanceOfSnow,
    this.condition,
    this.uv,
  });

  Day.fromJson(Map<String, dynamic> json) {
    maxtempC = json['maxtemp_c'] as double?;
    maxtempF = json['maxtemp_f'] as double?;
    mintempC = json['mintemp_c'] as double?;
    mintempF = json['mintemp_f'] as double?;
    avgtempC = json['avgtemp_c'] as double?;
    avgtempF = json['avgtemp_f'] as double?;
    maxwindMph = json['maxwind_mph'] as double?;
    maxwindKph = json['maxwind_kph'] as double?;
    totalprecipMm = json['totalprecip_mm'] as double?;
    totalprecipIn = json['totalprecip_in'] as double?;
    totalsnowCm = json['totalsnow_cm'] as double?;
    avgvisKm = json['avgvis_km'] as double?;
    avgvisMiles = json['avgvis_miles'] as double?;
    avghumidity = json['avghumidity'] as double?;
    dailyWillItRain = json['daily_will_it_rain'] as int?;
    dailyChanceOfRain = json['daily_chance_of_rain'] as int?;
    dailyWillItSnow = json['daily_will_it_snow'] as int?;
    dailyChanceOfSnow = json['daily_chance_of_snow'] as int?;
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'] as Map<String, dynamic>)
        : null;
    uv = json['uv'] as double?;
  }
  double? maxtempC;
  double? maxtempF;
  double? mintempC;
  double? mintempF;
  double? avgtempC;
  double? avgtempF;
  double? maxwindMph;
  double? maxwindKph;
  double? totalprecipMm;
  double? totalprecipIn;
  double? totalsnowCm;
  double? avgvisKm;
  double? avgvisMiles;
  double? avghumidity;
  int? dailyWillItRain;
  int? dailyChanceOfRain;
  int? dailyWillItSnow;
  int? dailyChanceOfSnow;
  Condition? condition;
  double? uv;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['maxtemp_c'] = maxtempC;
    data['maxtemp_f'] = maxtempF;
    data['mintemp_c'] = mintempC;
    data['mintemp_f'] = mintempF;
    data['avgtemp_c'] = avgtempC;
    data['avgtemp_f'] = avgtempF;
    data['maxwind_mph'] = maxwindMph;
    data['maxwind_kph'] = maxwindKph;
    data['totalprecip_mm'] = totalprecipMm;
    data['totalprecip_in'] = totalprecipIn;
    data['totalsnow_cm'] = totalsnowCm;
    data['avgvis_km'] = avgvisKm;
    data['avgvis_miles'] = avgvisMiles;
    data['avghumidity'] = avghumidity;
    data['daily_will_it_rain'] = dailyWillItRain;
    data['daily_chance_of_rain'] = dailyChanceOfRain;
    data['daily_will_it_snow'] = dailyWillItSnow;
    data['daily_chance_of_snow'] = dailyChanceOfSnow;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    data['uv'] = uv;
    return data;
  }
}

class Astro {
  Astro({
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.moonIllumination,
  });

  Astro.fromJson(Map<String, dynamic> json) {
    sunrise = json['sunrise'] as String?;
    sunset = json['sunset'] as String?;
    moonrise = json['moonrise'] as String?;
    moonset = json['moonset'] as String?;
    moonPhase = json['moon_phase'] as String?;
    moonIllumination = json['moon_illumination'] as String?;
  }
  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;
  String? moonPhase;
  String? moonIllumination;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    data['moonrise'] = moonrise;
    data['moonset'] = moonset;
    data['moon_phase'] = moonPhase;
    data['moon_illumination'] = moonIllumination;
    return data;
  }
}
