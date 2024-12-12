import 'package:intl/intl.dart';

class Location {
  Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    region = json['region'] as String?;
    country = json['country'] as String?;
    lat = json['lat'] as double?;
    lon = json['lon'] as double?;
    tzId = json['tz_id'] as String?;
    localtimeEpoch = json['localtime_epoch'] as int?;
    localtime = json['localtime'] as String?;
  }
  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  int? localtimeEpoch;
  String? localtime;

  String get formattedTime =>
      DateFormat('EEEE, MMMM d  hh:mm a').format(DateTime.parse(localtime!));

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['region'] = region;
    data['country'] = country;
    data['lat'] = lat;
    data['lon'] = lon;
    data['tz_id'] = tzId;
    data['localtime_epoch'] = localtimeEpoch;
    data['localtime'] = localtime;
    return data;
  }
}
