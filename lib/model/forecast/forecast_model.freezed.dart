// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) {
  return _ForecastResponse.fromJson(json);
}

/// @nodoc
mixin _$ForecastResponse {
  Location get location => throw _privateConstructorUsedError;
  CurrentWeather get current => throw _privateConstructorUsedError;
  Forecast get forecast => throw _privateConstructorUsedError;

  /// Serializes this ForecastResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastResponseCopyWith<ForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastResponseCopyWith<$Res> {
  factory $ForecastResponseCopyWith(
          ForecastResponse value, $Res Function(ForecastResponse) then) =
      _$ForecastResponseCopyWithImpl<$Res, ForecastResponse>;
  @useResult
  $Res call({Location location, CurrentWeather current, Forecast forecast});

  $LocationCopyWith<$Res> get location;
  $CurrentWeatherCopyWith<$Res> get current;
  $ForecastCopyWith<$Res> get forecast;
}

/// @nodoc
class _$ForecastResponseCopyWithImpl<$Res, $Val extends ForecastResponse>
    implements $ForecastResponseCopyWith<$Res> {
  _$ForecastResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
    Object? forecast = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast,
    ) as $Val);
  }

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get current {
    return $CurrentWeatherCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastCopyWith<$Res> get forecast {
    return $ForecastCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastResponseImplCopyWith<$Res>
    implements $ForecastResponseCopyWith<$Res> {
  factory _$$ForecastResponseImplCopyWith(_$ForecastResponseImpl value,
          $Res Function(_$ForecastResponseImpl) then) =
      __$$ForecastResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Location location, CurrentWeather current, Forecast forecast});

  @override
  $LocationCopyWith<$Res> get location;
  @override
  $CurrentWeatherCopyWith<$Res> get current;
  @override
  $ForecastCopyWith<$Res> get forecast;
}

/// @nodoc
class __$$ForecastResponseImplCopyWithImpl<$Res>
    extends _$ForecastResponseCopyWithImpl<$Res, _$ForecastResponseImpl>
    implements _$$ForecastResponseImplCopyWith<$Res> {
  __$$ForecastResponseImplCopyWithImpl(_$ForecastResponseImpl _value,
      $Res Function(_$ForecastResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
    Object? forecast = null,
  }) {
    return _then(_$ForecastResponseImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastResponseImpl implements _ForecastResponse {
  const _$ForecastResponseImpl(
      {required this.location, required this.current, required this.forecast});

  factory _$ForecastResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastResponseImplFromJson(json);

  @override
  final Location location;
  @override
  final CurrentWeather current;
  @override
  final Forecast forecast;

  @override
  String toString() {
    return 'ForecastResponse(location: $location, current: $current, forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastResponseImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location, current, forecast);

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastResponseImplCopyWith<_$ForecastResponseImpl> get copyWith =>
      __$$ForecastResponseImplCopyWithImpl<_$ForecastResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastResponseImplToJson(
      this,
    );
  }
}

abstract class _ForecastResponse implements ForecastResponse {
  const factory _ForecastResponse(
      {required final Location location,
      required final CurrentWeather current,
      required final Forecast forecast}) = _$ForecastResponseImpl;

  factory _ForecastResponse.fromJson(Map<String, dynamic> json) =
      _$ForecastResponseImpl.fromJson;

  @override
  Location get location;
  @override
  CurrentWeather get current;
  @override
  Forecast get forecast;

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastResponseImplCopyWith<_$ForecastResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get name => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get tz_id => throw _privateConstructorUsedError;
  int get localtime_epoch => throw _privateConstructorUsedError;
  String get localtime => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String name,
      String region,
      String country,
      double lat,
      double lon,
      String tz_id,
      int localtime_epoch,
      String localtime});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
    Object? lat = null,
    Object? lon = null,
    Object? tz_id = null,
    Object? localtime_epoch = null,
    Object? localtime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      tz_id: null == tz_id
          ? _value.tz_id
          : tz_id // ignore: cast_nullable_to_non_nullable
              as String,
      localtime_epoch: null == localtime_epoch
          ? _value.localtime_epoch
          : localtime_epoch // ignore: cast_nullable_to_non_nullable
              as int,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String region,
      String country,
      double lat,
      double lon,
      String tz_id,
      int localtime_epoch,
      String localtime});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
    Object? lat = null,
    Object? lon = null,
    Object? tz_id = null,
    Object? localtime_epoch = null,
    Object? localtime = null,
  }) {
    return _then(_$LocationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      tz_id: null == tz_id
          ? _value.tz_id
          : tz_id // ignore: cast_nullable_to_non_nullable
              as String,
      localtime_epoch: null == localtime_epoch
          ? _value.localtime_epoch
          : localtime_epoch // ignore: cast_nullable_to_non_nullable
              as int,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {required this.name,
      required this.region,
      required this.country,
      required this.lat,
      required this.lon,
      required this.tz_id,
      required this.localtime_epoch,
      required this.localtime});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String name;
  @override
  final String region;
  @override
  final String country;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final String tz_id;
  @override
  final int localtime_epoch;
  @override
  final String localtime;

  @override
  String toString() {
    return 'Location(name: $name, region: $region, country: $country, lat: $lat, lon: $lon, tz_id: $tz_id, localtime_epoch: $localtime_epoch, localtime: $localtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.tz_id, tz_id) || other.tz_id == tz_id) &&
            (identical(other.localtime_epoch, localtime_epoch) ||
                other.localtime_epoch == localtime_epoch) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, country, lat, lon,
      tz_id, localtime_epoch, localtime);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String name,
      required final String region,
      required final String country,
      required final double lat,
      required final double lon,
      required final String tz_id,
      required final int localtime_epoch,
      required final String localtime}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String get name;
  @override
  String get region;
  @override
  String get country;
  @override
  double get lat;
  @override
  double get lon;
  @override
  String get tz_id;
  @override
  int get localtime_epoch;
  @override
  String get localtime;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _CurrentWeather.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeather {
  int get last_updated_epoch => throw _privateConstructorUsedError;
  String get last_updated => throw _privateConstructorUsedError;
  double get temp_c => throw _privateConstructorUsedError;
  double get temp_f => throw _privateConstructorUsedError;
  int get is_day => throw _privateConstructorUsedError;
  WeatherCondition get condition => throw _privateConstructorUsedError;
  double get wind_mph => throw _privateConstructorUsedError;
  double get wind_kph => throw _privateConstructorUsedError;
  int get wind_degree => throw _privateConstructorUsedError;
  String get wind_dir => throw _privateConstructorUsedError;
  double get pressure_mb => throw _privateConstructorUsedError;
  double get pressure_in => throw _privateConstructorUsedError;
  double get precip_mm => throw _privateConstructorUsedError;
  double get precip_in => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get cloud => throw _privateConstructorUsedError;
  double get feelslike_c => throw _privateConstructorUsedError;
  double get feelslike_f => throw _privateConstructorUsedError;
  double get windchill_c => throw _privateConstructorUsedError;
  double get windchill_f => throw _privateConstructorUsedError;
  double get heatindex_c => throw _privateConstructorUsedError;
  double get heatindex_f => throw _privateConstructorUsedError;
  double get dewpoint_c => throw _privateConstructorUsedError;
  double get dewpoint_f => throw _privateConstructorUsedError;
  double get vis_km => throw _privateConstructorUsedError;
  double get vis_miles => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;
  double get gust_mph => throw _privateConstructorUsedError;
  double get gust_kph => throw _privateConstructorUsedError;

  /// Serializes this CurrentWeather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call(
      {int last_updated_epoch,
      String last_updated,
      double temp_c,
      double temp_f,
      int is_day,
      WeatherCondition condition,
      double wind_mph,
      double wind_kph,
      int wind_degree,
      String wind_dir,
      double pressure_mb,
      double pressure_in,
      double precip_mm,
      double precip_in,
      int humidity,
      int cloud,
      double feelslike_c,
      double feelslike_f,
      double windchill_c,
      double windchill_f,
      double heatindex_c,
      double heatindex_f,
      double dewpoint_c,
      double dewpoint_f,
      double vis_km,
      double vis_miles,
      double uv,
      double gust_mph,
      double gust_kph});

  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last_updated_epoch = null,
    Object? last_updated = null,
    Object? temp_c = null,
    Object? temp_f = null,
    Object? is_day = null,
    Object? condition = null,
    Object? wind_mph = null,
    Object? wind_kph = null,
    Object? wind_degree = null,
    Object? wind_dir = null,
    Object? pressure_mb = null,
    Object? pressure_in = null,
    Object? precip_mm = null,
    Object? precip_in = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelslike_c = null,
    Object? feelslike_f = null,
    Object? windchill_c = null,
    Object? windchill_f = null,
    Object? heatindex_c = null,
    Object? heatindex_f = null,
    Object? dewpoint_c = null,
    Object? dewpoint_f = null,
    Object? vis_km = null,
    Object? vis_miles = null,
    Object? uv = null,
    Object? gust_mph = null,
    Object? gust_kph = null,
  }) {
    return _then(_value.copyWith(
      last_updated_epoch: null == last_updated_epoch
          ? _value.last_updated_epoch
          : last_updated_epoch // ignore: cast_nullable_to_non_nullable
              as int,
      last_updated: null == last_updated
          ? _value.last_updated
          : last_updated // ignore: cast_nullable_to_non_nullable
              as String,
      temp_c: null == temp_c
          ? _value.temp_c
          : temp_c // ignore: cast_nullable_to_non_nullable
              as double,
      temp_f: null == temp_f
          ? _value.temp_f
          : temp_f // ignore: cast_nullable_to_non_nullable
              as double,
      is_day: null == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      wind_mph: null == wind_mph
          ? _value.wind_mph
          : wind_mph // ignore: cast_nullable_to_non_nullable
              as double,
      wind_kph: null == wind_kph
          ? _value.wind_kph
          : wind_kph // ignore: cast_nullable_to_non_nullable
              as double,
      wind_degree: null == wind_degree
          ? _value.wind_degree
          : wind_degree // ignore: cast_nullable_to_non_nullable
              as int,
      wind_dir: null == wind_dir
          ? _value.wind_dir
          : wind_dir // ignore: cast_nullable_to_non_nullable
              as String,
      pressure_mb: null == pressure_mb
          ? _value.pressure_mb
          : pressure_mb // ignore: cast_nullable_to_non_nullable
              as double,
      pressure_in: null == pressure_in
          ? _value.pressure_in
          : pressure_in // ignore: cast_nullable_to_non_nullable
              as double,
      precip_mm: null == precip_mm
          ? _value.precip_mm
          : precip_mm // ignore: cast_nullable_to_non_nullable
              as double,
      precip_in: null == precip_in
          ? _value.precip_in
          : precip_in // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelslike_c: null == feelslike_c
          ? _value.feelslike_c
          : feelslike_c // ignore: cast_nullable_to_non_nullable
              as double,
      feelslike_f: null == feelslike_f
          ? _value.feelslike_f
          : feelslike_f // ignore: cast_nullable_to_non_nullable
              as double,
      windchill_c: null == windchill_c
          ? _value.windchill_c
          : windchill_c // ignore: cast_nullable_to_non_nullable
              as double,
      windchill_f: null == windchill_f
          ? _value.windchill_f
          : windchill_f // ignore: cast_nullable_to_non_nullable
              as double,
      heatindex_c: null == heatindex_c
          ? _value.heatindex_c
          : heatindex_c // ignore: cast_nullable_to_non_nullable
              as double,
      heatindex_f: null == heatindex_f
          ? _value.heatindex_f
          : heatindex_f // ignore: cast_nullable_to_non_nullable
              as double,
      dewpoint_c: null == dewpoint_c
          ? _value.dewpoint_c
          : dewpoint_c // ignore: cast_nullable_to_non_nullable
              as double,
      dewpoint_f: null == dewpoint_f
          ? _value.dewpoint_f
          : dewpoint_f // ignore: cast_nullable_to_non_nullable
              as double,
      vis_km: null == vis_km
          ? _value.vis_km
          : vis_km // ignore: cast_nullable_to_non_nullable
              as double,
      vis_miles: null == vis_miles
          ? _value.vis_miles
          : vis_miles // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      gust_mph: null == gust_mph
          ? _value.gust_mph
          : gust_mph // ignore: cast_nullable_to_non_nullable
              as double,
      gust_kph: null == gust_kph
          ? _value.gust_kph
          : gust_kph // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of CurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherConditionCopyWith<$Res> get condition {
    return $WeatherConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherImplCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$CurrentWeatherImplCopyWith(_$CurrentWeatherImpl value,
          $Res Function(_$CurrentWeatherImpl) then) =
      __$$CurrentWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int last_updated_epoch,
      String last_updated,
      double temp_c,
      double temp_f,
      int is_day,
      WeatherCondition condition,
      double wind_mph,
      double wind_kph,
      int wind_degree,
      String wind_dir,
      double pressure_mb,
      double pressure_in,
      double precip_mm,
      double precip_in,
      int humidity,
      int cloud,
      double feelslike_c,
      double feelslike_f,
      double windchill_c,
      double windchill_f,
      double heatindex_c,
      double heatindex_f,
      double dewpoint_c,
      double dewpoint_f,
      double vis_km,
      double vis_miles,
      double uv,
      double gust_mph,
      double gust_kph});

  @override
  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$CurrentWeatherImplCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res, _$CurrentWeatherImpl>
    implements _$$CurrentWeatherImplCopyWith<$Res> {
  __$$CurrentWeatherImplCopyWithImpl(
      _$CurrentWeatherImpl _value, $Res Function(_$CurrentWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last_updated_epoch = null,
    Object? last_updated = null,
    Object? temp_c = null,
    Object? temp_f = null,
    Object? is_day = null,
    Object? condition = null,
    Object? wind_mph = null,
    Object? wind_kph = null,
    Object? wind_degree = null,
    Object? wind_dir = null,
    Object? pressure_mb = null,
    Object? pressure_in = null,
    Object? precip_mm = null,
    Object? precip_in = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelslike_c = null,
    Object? feelslike_f = null,
    Object? windchill_c = null,
    Object? windchill_f = null,
    Object? heatindex_c = null,
    Object? heatindex_f = null,
    Object? dewpoint_c = null,
    Object? dewpoint_f = null,
    Object? vis_km = null,
    Object? vis_miles = null,
    Object? uv = null,
    Object? gust_mph = null,
    Object? gust_kph = null,
  }) {
    return _then(_$CurrentWeatherImpl(
      last_updated_epoch: null == last_updated_epoch
          ? _value.last_updated_epoch
          : last_updated_epoch // ignore: cast_nullable_to_non_nullable
              as int,
      last_updated: null == last_updated
          ? _value.last_updated
          : last_updated // ignore: cast_nullable_to_non_nullable
              as String,
      temp_c: null == temp_c
          ? _value.temp_c
          : temp_c // ignore: cast_nullable_to_non_nullable
              as double,
      temp_f: null == temp_f
          ? _value.temp_f
          : temp_f // ignore: cast_nullable_to_non_nullable
              as double,
      is_day: null == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      wind_mph: null == wind_mph
          ? _value.wind_mph
          : wind_mph // ignore: cast_nullable_to_non_nullable
              as double,
      wind_kph: null == wind_kph
          ? _value.wind_kph
          : wind_kph // ignore: cast_nullable_to_non_nullable
              as double,
      wind_degree: null == wind_degree
          ? _value.wind_degree
          : wind_degree // ignore: cast_nullable_to_non_nullable
              as int,
      wind_dir: null == wind_dir
          ? _value.wind_dir
          : wind_dir // ignore: cast_nullable_to_non_nullable
              as String,
      pressure_mb: null == pressure_mb
          ? _value.pressure_mb
          : pressure_mb // ignore: cast_nullable_to_non_nullable
              as double,
      pressure_in: null == pressure_in
          ? _value.pressure_in
          : pressure_in // ignore: cast_nullable_to_non_nullable
              as double,
      precip_mm: null == precip_mm
          ? _value.precip_mm
          : precip_mm // ignore: cast_nullable_to_non_nullable
              as double,
      precip_in: null == precip_in
          ? _value.precip_in
          : precip_in // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelslike_c: null == feelslike_c
          ? _value.feelslike_c
          : feelslike_c // ignore: cast_nullable_to_non_nullable
              as double,
      feelslike_f: null == feelslike_f
          ? _value.feelslike_f
          : feelslike_f // ignore: cast_nullable_to_non_nullable
              as double,
      windchill_c: null == windchill_c
          ? _value.windchill_c
          : windchill_c // ignore: cast_nullable_to_non_nullable
              as double,
      windchill_f: null == windchill_f
          ? _value.windchill_f
          : windchill_f // ignore: cast_nullable_to_non_nullable
              as double,
      heatindex_c: null == heatindex_c
          ? _value.heatindex_c
          : heatindex_c // ignore: cast_nullable_to_non_nullable
              as double,
      heatindex_f: null == heatindex_f
          ? _value.heatindex_f
          : heatindex_f // ignore: cast_nullable_to_non_nullable
              as double,
      dewpoint_c: null == dewpoint_c
          ? _value.dewpoint_c
          : dewpoint_c // ignore: cast_nullable_to_non_nullable
              as double,
      dewpoint_f: null == dewpoint_f
          ? _value.dewpoint_f
          : dewpoint_f // ignore: cast_nullable_to_non_nullable
              as double,
      vis_km: null == vis_km
          ? _value.vis_km
          : vis_km // ignore: cast_nullable_to_non_nullable
              as double,
      vis_miles: null == vis_miles
          ? _value.vis_miles
          : vis_miles // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      gust_mph: null == gust_mph
          ? _value.gust_mph
          : gust_mph // ignore: cast_nullable_to_non_nullable
              as double,
      gust_kph: null == gust_kph
          ? _value.gust_kph
          : gust_kph // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherImpl implements _CurrentWeather {
  const _$CurrentWeatherImpl(
      {required this.last_updated_epoch,
      required this.last_updated,
      required this.temp_c,
      required this.temp_f,
      required this.is_day,
      required this.condition,
      required this.wind_mph,
      required this.wind_kph,
      required this.wind_degree,
      required this.wind_dir,
      required this.pressure_mb,
      required this.pressure_in,
      required this.precip_mm,
      required this.precip_in,
      required this.humidity,
      required this.cloud,
      required this.feelslike_c,
      required this.feelslike_f,
      required this.windchill_c,
      required this.windchill_f,
      required this.heatindex_c,
      required this.heatindex_f,
      required this.dewpoint_c,
      required this.dewpoint_f,
      required this.vis_km,
      required this.vis_miles,
      required this.uv,
      required this.gust_mph,
      required this.gust_kph});

  factory _$CurrentWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherImplFromJson(json);

  @override
  final int last_updated_epoch;
  @override
  final String last_updated;
  @override
  final double temp_c;
  @override
  final double temp_f;
  @override
  final int is_day;
  @override
  final WeatherCondition condition;
  @override
  final double wind_mph;
  @override
  final double wind_kph;
  @override
  final int wind_degree;
  @override
  final String wind_dir;
  @override
  final double pressure_mb;
  @override
  final double pressure_in;
  @override
  final double precip_mm;
  @override
  final double precip_in;
  @override
  final int humidity;
  @override
  final int cloud;
  @override
  final double feelslike_c;
  @override
  final double feelslike_f;
  @override
  final double windchill_c;
  @override
  final double windchill_f;
  @override
  final double heatindex_c;
  @override
  final double heatindex_f;
  @override
  final double dewpoint_c;
  @override
  final double dewpoint_f;
  @override
  final double vis_km;
  @override
  final double vis_miles;
  @override
  final double uv;
  @override
  final double gust_mph;
  @override
  final double gust_kph;

  @override
  String toString() {
    return 'CurrentWeather(last_updated_epoch: $last_updated_epoch, last_updated: $last_updated, temp_c: $temp_c, temp_f: $temp_f, is_day: $is_day, condition: $condition, wind_mph: $wind_mph, wind_kph: $wind_kph, wind_degree: $wind_degree, wind_dir: $wind_dir, pressure_mb: $pressure_mb, pressure_in: $pressure_in, precip_mm: $precip_mm, precip_in: $precip_in, humidity: $humidity, cloud: $cloud, feelslike_c: $feelslike_c, feelslike_f: $feelslike_f, windchill_c: $windchill_c, windchill_f: $windchill_f, heatindex_c: $heatindex_c, heatindex_f: $heatindex_f, dewpoint_c: $dewpoint_c, dewpoint_f: $dewpoint_f, vis_km: $vis_km, vis_miles: $vis_miles, uv: $uv, gust_mph: $gust_mph, gust_kph: $gust_kph)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherImpl &&
            (identical(other.last_updated_epoch, last_updated_epoch) ||
                other.last_updated_epoch == last_updated_epoch) &&
            (identical(other.last_updated, last_updated) ||
                other.last_updated == last_updated) &&
            (identical(other.temp_c, temp_c) || other.temp_c == temp_c) &&
            (identical(other.temp_f, temp_f) || other.temp_f == temp_f) &&
            (identical(other.is_day, is_day) || other.is_day == is_day) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.wind_mph, wind_mph) ||
                other.wind_mph == wind_mph) &&
            (identical(other.wind_kph, wind_kph) ||
                other.wind_kph == wind_kph) &&
            (identical(other.wind_degree, wind_degree) ||
                other.wind_degree == wind_degree) &&
            (identical(other.wind_dir, wind_dir) ||
                other.wind_dir == wind_dir) &&
            (identical(other.pressure_mb, pressure_mb) ||
                other.pressure_mb == pressure_mb) &&
            (identical(other.pressure_in, pressure_in) ||
                other.pressure_in == pressure_in) &&
            (identical(other.precip_mm, precip_mm) ||
                other.precip_mm == precip_mm) &&
            (identical(other.precip_in, precip_in) ||
                other.precip_in == precip_in) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.feelslike_c, feelslike_c) ||
                other.feelslike_c == feelslike_c) &&
            (identical(other.feelslike_f, feelslike_f) ||
                other.feelslike_f == feelslike_f) &&
            (identical(other.windchill_c, windchill_c) ||
                other.windchill_c == windchill_c) &&
            (identical(other.windchill_f, windchill_f) ||
                other.windchill_f == windchill_f) &&
            (identical(other.heatindex_c, heatindex_c) ||
                other.heatindex_c == heatindex_c) &&
            (identical(other.heatindex_f, heatindex_f) ||
                other.heatindex_f == heatindex_f) &&
            (identical(other.dewpoint_c, dewpoint_c) ||
                other.dewpoint_c == dewpoint_c) &&
            (identical(other.dewpoint_f, dewpoint_f) ||
                other.dewpoint_f == dewpoint_f) &&
            (identical(other.vis_km, vis_km) || other.vis_km == vis_km) &&
            (identical(other.vis_miles, vis_miles) ||
                other.vis_miles == vis_miles) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.gust_mph, gust_mph) ||
                other.gust_mph == gust_mph) &&
            (identical(other.gust_kph, gust_kph) ||
                other.gust_kph == gust_kph));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        last_updated_epoch,
        last_updated,
        temp_c,
        temp_f,
        is_day,
        condition,
        wind_mph,
        wind_kph,
        wind_degree,
        wind_dir,
        pressure_mb,
        pressure_in,
        precip_mm,
        precip_in,
        humidity,
        cloud,
        feelslike_c,
        feelslike_f,
        windchill_c,
        windchill_f,
        heatindex_c,
        heatindex_f,
        dewpoint_c,
        dewpoint_f,
        vis_km,
        vis_miles,
        uv,
        gust_mph,
        gust_kph
      ]);

  /// Create a copy of CurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      __$$CurrentWeatherImplCopyWithImpl<_$CurrentWeatherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeather implements CurrentWeather {
  const factory _CurrentWeather(
      {required final int last_updated_epoch,
      required final String last_updated,
      required final double temp_c,
      required final double temp_f,
      required final int is_day,
      required final WeatherCondition condition,
      required final double wind_mph,
      required final double wind_kph,
      required final int wind_degree,
      required final String wind_dir,
      required final double pressure_mb,
      required final double pressure_in,
      required final double precip_mm,
      required final double precip_in,
      required final int humidity,
      required final int cloud,
      required final double feelslike_c,
      required final double feelslike_f,
      required final double windchill_c,
      required final double windchill_f,
      required final double heatindex_c,
      required final double heatindex_f,
      required final double dewpoint_c,
      required final double dewpoint_f,
      required final double vis_km,
      required final double vis_miles,
      required final double uv,
      required final double gust_mph,
      required final double gust_kph}) = _$CurrentWeatherImpl;

  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherImpl.fromJson;

  @override
  int get last_updated_epoch;
  @override
  String get last_updated;
  @override
  double get temp_c;
  @override
  double get temp_f;
  @override
  int get is_day;
  @override
  WeatherCondition get condition;
  @override
  double get wind_mph;
  @override
  double get wind_kph;
  @override
  int get wind_degree;
  @override
  String get wind_dir;
  @override
  double get pressure_mb;
  @override
  double get pressure_in;
  @override
  double get precip_mm;
  @override
  double get precip_in;
  @override
  int get humidity;
  @override
  int get cloud;
  @override
  double get feelslike_c;
  @override
  double get feelslike_f;
  @override
  double get windchill_c;
  @override
  double get windchill_f;
  @override
  double get heatindex_c;
  @override
  double get heatindex_f;
  @override
  double get dewpoint_c;
  @override
  double get dewpoint_f;
  @override
  double get vis_km;
  @override
  double get vis_miles;
  @override
  double get uv;
  @override
  double get gust_mph;
  @override
  double get gust_kph;

  /// Create a copy of CurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherCondition _$WeatherConditionFromJson(Map<String, dynamic> json) {
  return _WeatherCondition.fromJson(json);
}

/// @nodoc
mixin _$WeatherCondition {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Serializes this WeatherCondition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherConditionCopyWith<WeatherCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionCopyWith<$Res> {
  factory $WeatherConditionCopyWith(
          WeatherCondition value, $Res Function(WeatherCondition) then) =
      _$WeatherConditionCopyWithImpl<$Res, WeatherCondition>;
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class _$WeatherConditionCopyWithImpl<$Res, $Val extends WeatherCondition>
    implements $WeatherConditionCopyWith<$Res> {
  _$WeatherConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherConditionImplCopyWith<$Res>
    implements $WeatherConditionCopyWith<$Res> {
  factory _$$WeatherConditionImplCopyWith(_$WeatherConditionImpl value,
          $Res Function(_$WeatherConditionImpl) then) =
      __$$WeatherConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class __$$WeatherConditionImplCopyWithImpl<$Res>
    extends _$WeatherConditionCopyWithImpl<$Res, _$WeatherConditionImpl>
    implements _$$WeatherConditionImplCopyWith<$Res> {
  __$$WeatherConditionImplCopyWithImpl(_$WeatherConditionImpl _value,
      $Res Function(_$WeatherConditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_$WeatherConditionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherConditionImpl implements _WeatherCondition {
  const _$WeatherConditionImpl(
      {required this.text, required this.icon, required this.code});

  factory _$WeatherConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherConditionImplFromJson(json);

  @override
  final String text;
  @override
  final String icon;
  @override
  final int code;

  @override
  String toString() {
    return 'WeatherCondition(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherConditionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon, code);

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherConditionImplCopyWith<_$WeatherConditionImpl> get copyWith =>
      __$$WeatherConditionImplCopyWithImpl<_$WeatherConditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherConditionImplToJson(
      this,
    );
  }
}

abstract class _WeatherCondition implements WeatherCondition {
  const factory _WeatherCondition(
      {required final String text,
      required final String icon,
      required final int code}) = _$WeatherConditionImpl;

  factory _WeatherCondition.fromJson(Map<String, dynamic> json) =
      _$WeatherConditionImpl.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  int get code;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherConditionImplCopyWith<_$WeatherConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return _Forecast.fromJson(json);
}

/// @nodoc
mixin _$Forecast {
  List<ForecastDay> get forecastday => throw _privateConstructorUsedError;

  /// Serializes this Forecast to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastCopyWith<Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) then) =
      _$ForecastCopyWithImpl<$Res, Forecast>;
  @useResult
  $Res call({List<ForecastDay> forecastday});
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res, $Val extends Forecast>
    implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_value.copyWith(
      forecastday: null == forecastday
          ? _value.forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as List<ForecastDay>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastImplCopyWith<$Res>
    implements $ForecastCopyWith<$Res> {
  factory _$$ForecastImplCopyWith(
          _$ForecastImpl value, $Res Function(_$ForecastImpl) then) =
      __$$ForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ForecastDay> forecastday});
}

/// @nodoc
class __$$ForecastImplCopyWithImpl<$Res>
    extends _$ForecastCopyWithImpl<$Res, _$ForecastImpl>
    implements _$$ForecastImplCopyWith<$Res> {
  __$$ForecastImplCopyWithImpl(
      _$ForecastImpl _value, $Res Function(_$ForecastImpl) _then)
      : super(_value, _then);

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_$ForecastImpl(
      forecastday: null == forecastday
          ? _value._forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as List<ForecastDay>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastImpl implements _Forecast {
  const _$ForecastImpl({required final List<ForecastDay> forecastday})
      : _forecastday = forecastday;

  factory _$ForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastImplFromJson(json);

  final List<ForecastDay> _forecastday;
  @override
  List<ForecastDay> get forecastday {
    if (_forecastday is EqualUnmodifiableListView) return _forecastday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecastday);
  }

  @override
  String toString() {
    return 'Forecast(forecastday: $forecastday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastImpl &&
            const DeepCollectionEquality()
                .equals(other._forecastday, _forecastday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_forecastday));

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastImplCopyWith<_$ForecastImpl> get copyWith =>
      __$$ForecastImplCopyWithImpl<_$ForecastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastImplToJson(
      this,
    );
  }
}

abstract class _Forecast implements Forecast {
  const factory _Forecast({required final List<ForecastDay> forecastday}) =
      _$ForecastImpl;

  factory _Forecast.fromJson(Map<String, dynamic> json) =
      _$ForecastImpl.fromJson;

  @override
  List<ForecastDay> get forecastday;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastImplCopyWith<_$ForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) {
  return _ForecastDay.fromJson(json);
}

/// @nodoc
mixin _$ForecastDay {
  String get date => throw _privateConstructorUsedError;
  int get date_epoch => throw _privateConstructorUsedError;
  Day get day => throw _privateConstructorUsedError;
  Astro get astro => throw _privateConstructorUsedError;
  List<Hour> get hour => throw _privateConstructorUsedError;

  /// Serializes this ForecastDay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastDayCopyWith<ForecastDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayCopyWith<$Res> {
  factory $ForecastDayCopyWith(
          ForecastDay value, $Res Function(ForecastDay) then) =
      _$ForecastDayCopyWithImpl<$Res, ForecastDay>;
  @useResult
  $Res call(
      {String date, int date_epoch, Day day, Astro astro, List<Hour> hour});

  $DayCopyWith<$Res> get day;
  $AstroCopyWith<$Res> get astro;
}

/// @nodoc
class _$ForecastDayCopyWithImpl<$Res, $Val extends ForecastDay>
    implements $ForecastDayCopyWith<$Res> {
  _$ForecastDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? date_epoch = null,
    Object? day = null,
    Object? astro = null,
    Object? hour = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      date_epoch: null == date_epoch
          ? _value.date_epoch
          : date_epoch // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day,
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as Astro,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<Hour>,
    ) as $Val);
  }

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get day {
    return $DayCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AstroCopyWith<$Res> get astro {
    return $AstroCopyWith<$Res>(_value.astro, (value) {
      return _then(_value.copyWith(astro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDayImplCopyWith<$Res>
    implements $ForecastDayCopyWith<$Res> {
  factory _$$ForecastDayImplCopyWith(
          _$ForecastDayImpl value, $Res Function(_$ForecastDayImpl) then) =
      __$$ForecastDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date, int date_epoch, Day day, Astro astro, List<Hour> hour});

  @override
  $DayCopyWith<$Res> get day;
  @override
  $AstroCopyWith<$Res> get astro;
}

/// @nodoc
class __$$ForecastDayImplCopyWithImpl<$Res>
    extends _$ForecastDayCopyWithImpl<$Res, _$ForecastDayImpl>
    implements _$$ForecastDayImplCopyWith<$Res> {
  __$$ForecastDayImplCopyWithImpl(
      _$ForecastDayImpl _value, $Res Function(_$ForecastDayImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? date_epoch = null,
    Object? day = null,
    Object? astro = null,
    Object? hour = null,
  }) {
    return _then(_$ForecastDayImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      date_epoch: null == date_epoch
          ? _value.date_epoch
          : date_epoch // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day,
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as Astro,
      hour: null == hour
          ? _value._hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<Hour>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDayImpl implements _ForecastDay {
  const _$ForecastDayImpl(
      {required this.date,
      required this.date_epoch,
      required this.day,
      required this.astro,
      required final List<Hour> hour})
      : _hour = hour;

  factory _$ForecastDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayImplFromJson(json);

  @override
  final String date;
  @override
  final int date_epoch;
  @override
  final Day day;
  @override
  final Astro astro;
  final List<Hour> _hour;
  @override
  List<Hour> get hour {
    if (_hour is EqualUnmodifiableListView) return _hour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hour);
  }

  @override
  String toString() {
    return 'ForecastDay(date: $date, date_epoch: $date_epoch, day: $day, astro: $astro, hour: $hour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.date_epoch, date_epoch) ||
                other.date_epoch == date_epoch) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.astro, astro) || other.astro == astro) &&
            const DeepCollectionEquality().equals(other._hour, _hour));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, date_epoch, day, astro,
      const DeepCollectionEquality().hash(_hour));

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDayImplCopyWith<_$ForecastDayImpl> get copyWith =>
      __$$ForecastDayImplCopyWithImpl<_$ForecastDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayImplToJson(
      this,
    );
  }
}

abstract class _ForecastDay implements ForecastDay {
  const factory _ForecastDay(
      {required final String date,
      required final int date_epoch,
      required final Day day,
      required final Astro astro,
      required final List<Hour> hour}) = _$ForecastDayImpl;

  factory _ForecastDay.fromJson(Map<String, dynamic> json) =
      _$ForecastDayImpl.fromJson;

  @override
  String get date;
  @override
  int get date_epoch;
  @override
  Day get day;
  @override
  Astro get astro;
  @override
  List<Hour> get hour;

  /// Create a copy of ForecastDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastDayImplCopyWith<_$ForecastDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Day _$DayFromJson(Map<String, dynamic> json) {
  return _Day.fromJson(json);
}

/// @nodoc
mixin _$Day {
  double get maxtemp_c => throw _privateConstructorUsedError;
  double get maxtemp_f => throw _privateConstructorUsedError;
  double get mintemp_c => throw _privateConstructorUsedError;
  double get mintemp_f => throw _privateConstructorUsedError;
  double get avgtemp_c => throw _privateConstructorUsedError;
  double get avgtemp_f => throw _privateConstructorUsedError;
  double get maxwind_mph => throw _privateConstructorUsedError;
  double get maxwind_kph => throw _privateConstructorUsedError;
  double get totalprecip_mm => throw _privateConstructorUsedError;
  double get totalprecip_in => throw _privateConstructorUsedError;
  double get totalsnow_cm => throw _privateConstructorUsedError;
  double get avgvis_km => throw _privateConstructorUsedError;
  double get avgvis_miles => throw _privateConstructorUsedError;
  int get avghumidity => throw _privateConstructorUsedError;
  int get daily_will_it_rain => throw _privateConstructorUsedError;
  int get daily_chance_of_rain => throw _privateConstructorUsedError;
  int get daily_will_it_snow => throw _privateConstructorUsedError;
  int get daily_chance_of_snow => throw _privateConstructorUsedError;
  WeatherCondition get condition => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;

  /// Serializes this Day to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call(
      {double maxtemp_c,
      double maxtemp_f,
      double mintemp_c,
      double mintemp_f,
      double avgtemp_c,
      double avgtemp_f,
      double maxwind_mph,
      double maxwind_kph,
      double totalprecip_mm,
      double totalprecip_in,
      double totalsnow_cm,
      double avgvis_km,
      double avgvis_miles,
      int avghumidity,
      int daily_will_it_rain,
      int daily_chance_of_rain,
      int daily_will_it_snow,
      int daily_chance_of_snow,
      WeatherCondition condition,
      double uv});

  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtemp_c = null,
    Object? maxtemp_f = null,
    Object? mintemp_c = null,
    Object? mintemp_f = null,
    Object? avgtemp_c = null,
    Object? avgtemp_f = null,
    Object? maxwind_mph = null,
    Object? maxwind_kph = null,
    Object? totalprecip_mm = null,
    Object? totalprecip_in = null,
    Object? totalsnow_cm = null,
    Object? avgvis_km = null,
    Object? avgvis_miles = null,
    Object? avghumidity = null,
    Object? daily_will_it_rain = null,
    Object? daily_chance_of_rain = null,
    Object? daily_will_it_snow = null,
    Object? daily_chance_of_snow = null,
    Object? condition = null,
    Object? uv = null,
  }) {
    return _then(_value.copyWith(
      maxtemp_c: null == maxtemp_c
          ? _value.maxtemp_c
          : maxtemp_c // ignore: cast_nullable_to_non_nullable
              as double,
      maxtemp_f: null == maxtemp_f
          ? _value.maxtemp_f
          : maxtemp_f // ignore: cast_nullable_to_non_nullable
              as double,
      mintemp_c: null == mintemp_c
          ? _value.mintemp_c
          : mintemp_c // ignore: cast_nullable_to_non_nullable
              as double,
      mintemp_f: null == mintemp_f
          ? _value.mintemp_f
          : mintemp_f // ignore: cast_nullable_to_non_nullable
              as double,
      avgtemp_c: null == avgtemp_c
          ? _value.avgtemp_c
          : avgtemp_c // ignore: cast_nullable_to_non_nullable
              as double,
      avgtemp_f: null == avgtemp_f
          ? _value.avgtemp_f
          : avgtemp_f // ignore: cast_nullable_to_non_nullable
              as double,
      maxwind_mph: null == maxwind_mph
          ? _value.maxwind_mph
          : maxwind_mph // ignore: cast_nullable_to_non_nullable
              as double,
      maxwind_kph: null == maxwind_kph
          ? _value.maxwind_kph
          : maxwind_kph // ignore: cast_nullable_to_non_nullable
              as double,
      totalprecip_mm: null == totalprecip_mm
          ? _value.totalprecip_mm
          : totalprecip_mm // ignore: cast_nullable_to_non_nullable
              as double,
      totalprecip_in: null == totalprecip_in
          ? _value.totalprecip_in
          : totalprecip_in // ignore: cast_nullable_to_non_nullable
              as double,
      totalsnow_cm: null == totalsnow_cm
          ? _value.totalsnow_cm
          : totalsnow_cm // ignore: cast_nullable_to_non_nullable
              as double,
      avgvis_km: null == avgvis_km
          ? _value.avgvis_km
          : avgvis_km // ignore: cast_nullable_to_non_nullable
              as double,
      avgvis_miles: null == avgvis_miles
          ? _value.avgvis_miles
          : avgvis_miles // ignore: cast_nullable_to_non_nullable
              as double,
      avghumidity: null == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as int,
      daily_will_it_rain: null == daily_will_it_rain
          ? _value.daily_will_it_rain
          : daily_will_it_rain // ignore: cast_nullable_to_non_nullable
              as int,
      daily_chance_of_rain: null == daily_chance_of_rain
          ? _value.daily_chance_of_rain
          : daily_chance_of_rain // ignore: cast_nullable_to_non_nullable
              as int,
      daily_will_it_snow: null == daily_will_it_snow
          ? _value.daily_will_it_snow
          : daily_will_it_snow // ignore: cast_nullable_to_non_nullable
              as int,
      daily_chance_of_snow: null == daily_chance_of_snow
          ? _value.daily_chance_of_snow
          : daily_chance_of_snow // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherConditionCopyWith<$Res> get condition {
    return $WeatherConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DayImplCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$DayImplCopyWith(_$DayImpl value, $Res Function(_$DayImpl) then) =
      __$$DayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double maxtemp_c,
      double maxtemp_f,
      double mintemp_c,
      double mintemp_f,
      double avgtemp_c,
      double avgtemp_f,
      double maxwind_mph,
      double maxwind_kph,
      double totalprecip_mm,
      double totalprecip_in,
      double totalsnow_cm,
      double avgvis_km,
      double avgvis_miles,
      int avghumidity,
      int daily_will_it_rain,
      int daily_chance_of_rain,
      int daily_will_it_snow,
      int daily_chance_of_snow,
      WeatherCondition condition,
      double uv});

  @override
  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$DayImplCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$DayImpl>
    implements _$$DayImplCopyWith<$Res> {
  __$$DayImplCopyWithImpl(_$DayImpl _value, $Res Function(_$DayImpl) _then)
      : super(_value, _then);

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtemp_c = null,
    Object? maxtemp_f = null,
    Object? mintemp_c = null,
    Object? mintemp_f = null,
    Object? avgtemp_c = null,
    Object? avgtemp_f = null,
    Object? maxwind_mph = null,
    Object? maxwind_kph = null,
    Object? totalprecip_mm = null,
    Object? totalprecip_in = null,
    Object? totalsnow_cm = null,
    Object? avgvis_km = null,
    Object? avgvis_miles = null,
    Object? avghumidity = null,
    Object? daily_will_it_rain = null,
    Object? daily_chance_of_rain = null,
    Object? daily_will_it_snow = null,
    Object? daily_chance_of_snow = null,
    Object? condition = null,
    Object? uv = null,
  }) {
    return _then(_$DayImpl(
      maxtemp_c: null == maxtemp_c
          ? _value.maxtemp_c
          : maxtemp_c // ignore: cast_nullable_to_non_nullable
              as double,
      maxtemp_f: null == maxtemp_f
          ? _value.maxtemp_f
          : maxtemp_f // ignore: cast_nullable_to_non_nullable
              as double,
      mintemp_c: null == mintemp_c
          ? _value.mintemp_c
          : mintemp_c // ignore: cast_nullable_to_non_nullable
              as double,
      mintemp_f: null == mintemp_f
          ? _value.mintemp_f
          : mintemp_f // ignore: cast_nullable_to_non_nullable
              as double,
      avgtemp_c: null == avgtemp_c
          ? _value.avgtemp_c
          : avgtemp_c // ignore: cast_nullable_to_non_nullable
              as double,
      avgtemp_f: null == avgtemp_f
          ? _value.avgtemp_f
          : avgtemp_f // ignore: cast_nullable_to_non_nullable
              as double,
      maxwind_mph: null == maxwind_mph
          ? _value.maxwind_mph
          : maxwind_mph // ignore: cast_nullable_to_non_nullable
              as double,
      maxwind_kph: null == maxwind_kph
          ? _value.maxwind_kph
          : maxwind_kph // ignore: cast_nullable_to_non_nullable
              as double,
      totalprecip_mm: null == totalprecip_mm
          ? _value.totalprecip_mm
          : totalprecip_mm // ignore: cast_nullable_to_non_nullable
              as double,
      totalprecip_in: null == totalprecip_in
          ? _value.totalprecip_in
          : totalprecip_in // ignore: cast_nullable_to_non_nullable
              as double,
      totalsnow_cm: null == totalsnow_cm
          ? _value.totalsnow_cm
          : totalsnow_cm // ignore: cast_nullable_to_non_nullable
              as double,
      avgvis_km: null == avgvis_km
          ? _value.avgvis_km
          : avgvis_km // ignore: cast_nullable_to_non_nullable
              as double,
      avgvis_miles: null == avgvis_miles
          ? _value.avgvis_miles
          : avgvis_miles // ignore: cast_nullable_to_non_nullable
              as double,
      avghumidity: null == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as int,
      daily_will_it_rain: null == daily_will_it_rain
          ? _value.daily_will_it_rain
          : daily_will_it_rain // ignore: cast_nullable_to_non_nullable
              as int,
      daily_chance_of_rain: null == daily_chance_of_rain
          ? _value.daily_chance_of_rain
          : daily_chance_of_rain // ignore: cast_nullable_to_non_nullable
              as int,
      daily_will_it_snow: null == daily_will_it_snow
          ? _value.daily_will_it_snow
          : daily_will_it_snow // ignore: cast_nullable_to_non_nullable
              as int,
      daily_chance_of_snow: null == daily_chance_of_snow
          ? _value.daily_chance_of_snow
          : daily_chance_of_snow // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayImpl implements _Day {
  const _$DayImpl(
      {required this.maxtemp_c,
      required this.maxtemp_f,
      required this.mintemp_c,
      required this.mintemp_f,
      required this.avgtemp_c,
      required this.avgtemp_f,
      required this.maxwind_mph,
      required this.maxwind_kph,
      required this.totalprecip_mm,
      required this.totalprecip_in,
      required this.totalsnow_cm,
      required this.avgvis_km,
      required this.avgvis_miles,
      required this.avghumidity,
      required this.daily_will_it_rain,
      required this.daily_chance_of_rain,
      required this.daily_will_it_snow,
      required this.daily_chance_of_snow,
      required this.condition,
      required this.uv});

  factory _$DayImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayImplFromJson(json);

  @override
  final double maxtemp_c;
  @override
  final double maxtemp_f;
  @override
  final double mintemp_c;
  @override
  final double mintemp_f;
  @override
  final double avgtemp_c;
  @override
  final double avgtemp_f;
  @override
  final double maxwind_mph;
  @override
  final double maxwind_kph;
  @override
  final double totalprecip_mm;
  @override
  final double totalprecip_in;
  @override
  final double totalsnow_cm;
  @override
  final double avgvis_km;
  @override
  final double avgvis_miles;
  @override
  final int avghumidity;
  @override
  final int daily_will_it_rain;
  @override
  final int daily_chance_of_rain;
  @override
  final int daily_will_it_snow;
  @override
  final int daily_chance_of_snow;
  @override
  final WeatherCondition condition;
  @override
  final double uv;

  @override
  String toString() {
    return 'Day(maxtemp_c: $maxtemp_c, maxtemp_f: $maxtemp_f, mintemp_c: $mintemp_c, mintemp_f: $mintemp_f, avgtemp_c: $avgtemp_c, avgtemp_f: $avgtemp_f, maxwind_mph: $maxwind_mph, maxwind_kph: $maxwind_kph, totalprecip_mm: $totalprecip_mm, totalprecip_in: $totalprecip_in, totalsnow_cm: $totalsnow_cm, avgvis_km: $avgvis_km, avgvis_miles: $avgvis_miles, avghumidity: $avghumidity, daily_will_it_rain: $daily_will_it_rain, daily_chance_of_rain: $daily_chance_of_rain, daily_will_it_snow: $daily_will_it_snow, daily_chance_of_snow: $daily_chance_of_snow, condition: $condition, uv: $uv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayImpl &&
            (identical(other.maxtemp_c, maxtemp_c) ||
                other.maxtemp_c == maxtemp_c) &&
            (identical(other.maxtemp_f, maxtemp_f) ||
                other.maxtemp_f == maxtemp_f) &&
            (identical(other.mintemp_c, mintemp_c) ||
                other.mintemp_c == mintemp_c) &&
            (identical(other.mintemp_f, mintemp_f) ||
                other.mintemp_f == mintemp_f) &&
            (identical(other.avgtemp_c, avgtemp_c) ||
                other.avgtemp_c == avgtemp_c) &&
            (identical(other.avgtemp_f, avgtemp_f) ||
                other.avgtemp_f == avgtemp_f) &&
            (identical(other.maxwind_mph, maxwind_mph) ||
                other.maxwind_mph == maxwind_mph) &&
            (identical(other.maxwind_kph, maxwind_kph) ||
                other.maxwind_kph == maxwind_kph) &&
            (identical(other.totalprecip_mm, totalprecip_mm) ||
                other.totalprecip_mm == totalprecip_mm) &&
            (identical(other.totalprecip_in, totalprecip_in) ||
                other.totalprecip_in == totalprecip_in) &&
            (identical(other.totalsnow_cm, totalsnow_cm) ||
                other.totalsnow_cm == totalsnow_cm) &&
            (identical(other.avgvis_km, avgvis_km) ||
                other.avgvis_km == avgvis_km) &&
            (identical(other.avgvis_miles, avgvis_miles) ||
                other.avgvis_miles == avgvis_miles) &&
            (identical(other.avghumidity, avghumidity) ||
                other.avghumidity == avghumidity) &&
            (identical(other.daily_will_it_rain, daily_will_it_rain) ||
                other.daily_will_it_rain == daily_will_it_rain) &&
            (identical(other.daily_chance_of_rain, daily_chance_of_rain) ||
                other.daily_chance_of_rain == daily_chance_of_rain) &&
            (identical(other.daily_will_it_snow, daily_will_it_snow) ||
                other.daily_will_it_snow == daily_will_it_snow) &&
            (identical(other.daily_chance_of_snow, daily_chance_of_snow) ||
                other.daily_chance_of_snow == daily_chance_of_snow) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.uv, uv) || other.uv == uv));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        maxtemp_c,
        maxtemp_f,
        mintemp_c,
        mintemp_f,
        avgtemp_c,
        avgtemp_f,
        maxwind_mph,
        maxwind_kph,
        totalprecip_mm,
        totalprecip_in,
        totalsnow_cm,
        avgvis_km,
        avgvis_miles,
        avghumidity,
        daily_will_it_rain,
        daily_chance_of_rain,
        daily_will_it_snow,
        daily_chance_of_snow,
        condition,
        uv
      ]);

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      __$$DayImplCopyWithImpl<_$DayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayImplToJson(
      this,
    );
  }
}

abstract class _Day implements Day {
  const factory _Day(
      {required final double maxtemp_c,
      required final double maxtemp_f,
      required final double mintemp_c,
      required final double mintemp_f,
      required final double avgtemp_c,
      required final double avgtemp_f,
      required final double maxwind_mph,
      required final double maxwind_kph,
      required final double totalprecip_mm,
      required final double totalprecip_in,
      required final double totalsnow_cm,
      required final double avgvis_km,
      required final double avgvis_miles,
      required final int avghumidity,
      required final int daily_will_it_rain,
      required final int daily_chance_of_rain,
      required final int daily_will_it_snow,
      required final int daily_chance_of_snow,
      required final WeatherCondition condition,
      required final double uv}) = _$DayImpl;

  factory _Day.fromJson(Map<String, dynamic> json) = _$DayImpl.fromJson;

  @override
  double get maxtemp_c;
  @override
  double get maxtemp_f;
  @override
  double get mintemp_c;
  @override
  double get mintemp_f;
  @override
  double get avgtemp_c;
  @override
  double get avgtemp_f;
  @override
  double get maxwind_mph;
  @override
  double get maxwind_kph;
  @override
  double get totalprecip_mm;
  @override
  double get totalprecip_in;
  @override
  double get totalsnow_cm;
  @override
  double get avgvis_km;
  @override
  double get avgvis_miles;
  @override
  int get avghumidity;
  @override
  int get daily_will_it_rain;
  @override
  int get daily_chance_of_rain;
  @override
  int get daily_will_it_snow;
  @override
  int get daily_chance_of_snow;
  @override
  WeatherCondition get condition;
  @override
  double get uv;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Astro _$AstroFromJson(Map<String, dynamic> json) {
  return _Astro.fromJson(json);
}

/// @nodoc
mixin _$Astro {
  String get sunrise => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;
  String get moonrise => throw _privateConstructorUsedError;
  String get moonset => throw _privateConstructorUsedError;
  String get moon_phase => throw _privateConstructorUsedError;
  int get moon_illumination => throw _privateConstructorUsedError;
  int get is_moon_up => throw _privateConstructorUsedError;
  int get is_sun_up => throw _privateConstructorUsedError;

  /// Serializes this Astro to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Astro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AstroCopyWith<Astro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstroCopyWith<$Res> {
  factory $AstroCopyWith(Astro value, $Res Function(Astro) then) =
      _$AstroCopyWithImpl<$Res, Astro>;
  @useResult
  $Res call(
      {String sunrise,
      String sunset,
      String moonrise,
      String moonset,
      String moon_phase,
      int moon_illumination,
      int is_moon_up,
      int is_sun_up});
}

/// @nodoc
class _$AstroCopyWithImpl<$Res, $Val extends Astro>
    implements $AstroCopyWith<$Res> {
  _$AstroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Astro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
    Object? moonrise = null,
    Object? moonset = null,
    Object? moon_phase = null,
    Object? moon_illumination = null,
    Object? is_moon_up = null,
    Object? is_sun_up = null,
  }) {
    return _then(_value.copyWith(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
      moonrise: null == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as String,
      moonset: null == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as String,
      moon_phase: null == moon_phase
          ? _value.moon_phase
          : moon_phase // ignore: cast_nullable_to_non_nullable
              as String,
      moon_illumination: null == moon_illumination
          ? _value.moon_illumination
          : moon_illumination // ignore: cast_nullable_to_non_nullable
              as int,
      is_moon_up: null == is_moon_up
          ? _value.is_moon_up
          : is_moon_up // ignore: cast_nullable_to_non_nullable
              as int,
      is_sun_up: null == is_sun_up
          ? _value.is_sun_up
          : is_sun_up // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AstroImplCopyWith<$Res> implements $AstroCopyWith<$Res> {
  factory _$$AstroImplCopyWith(
          _$AstroImpl value, $Res Function(_$AstroImpl) then) =
      __$$AstroImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sunrise,
      String sunset,
      String moonrise,
      String moonset,
      String moon_phase,
      int moon_illumination,
      int is_moon_up,
      int is_sun_up});
}

/// @nodoc
class __$$AstroImplCopyWithImpl<$Res>
    extends _$AstroCopyWithImpl<$Res, _$AstroImpl>
    implements _$$AstroImplCopyWith<$Res> {
  __$$AstroImplCopyWithImpl(
      _$AstroImpl _value, $Res Function(_$AstroImpl) _then)
      : super(_value, _then);

  /// Create a copy of Astro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
    Object? moonrise = null,
    Object? moonset = null,
    Object? moon_phase = null,
    Object? moon_illumination = null,
    Object? is_moon_up = null,
    Object? is_sun_up = null,
  }) {
    return _then(_$AstroImpl(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
      moonrise: null == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as String,
      moonset: null == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as String,
      moon_phase: null == moon_phase
          ? _value.moon_phase
          : moon_phase // ignore: cast_nullable_to_non_nullable
              as String,
      moon_illumination: null == moon_illumination
          ? _value.moon_illumination
          : moon_illumination // ignore: cast_nullable_to_non_nullable
              as int,
      is_moon_up: null == is_moon_up
          ? _value.is_moon_up
          : is_moon_up // ignore: cast_nullable_to_non_nullable
              as int,
      is_sun_up: null == is_sun_up
          ? _value.is_sun_up
          : is_sun_up // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AstroImpl implements _Astro {
  const _$AstroImpl(
      {required this.sunrise,
      required this.sunset,
      required this.moonrise,
      required this.moonset,
      required this.moon_phase,
      required this.moon_illumination,
      required this.is_moon_up,
      required this.is_sun_up});

  factory _$AstroImpl.fromJson(Map<String, dynamic> json) =>
      _$$AstroImplFromJson(json);

  @override
  final String sunrise;
  @override
  final String sunset;
  @override
  final String moonrise;
  @override
  final String moonset;
  @override
  final String moon_phase;
  @override
  final int moon_illumination;
  @override
  final int is_moon_up;
  @override
  final int is_sun_up;

  @override
  String toString() {
    return 'Astro(sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moon_phase: $moon_phase, moon_illumination: $moon_illumination, is_moon_up: $is_moon_up, is_sun_up: $is_sun_up)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstroImpl &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.moonrise, moonrise) ||
                other.moonrise == moonrise) &&
            (identical(other.moonset, moonset) || other.moonset == moonset) &&
            (identical(other.moon_phase, moon_phase) ||
                other.moon_phase == moon_phase) &&
            (identical(other.moon_illumination, moon_illumination) ||
                other.moon_illumination == moon_illumination) &&
            (identical(other.is_moon_up, is_moon_up) ||
                other.is_moon_up == is_moon_up) &&
            (identical(other.is_sun_up, is_sun_up) ||
                other.is_sun_up == is_sun_up));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sunrise, sunset, moonrise,
      moonset, moon_phase, moon_illumination, is_moon_up, is_sun_up);

  /// Create a copy of Astro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AstroImplCopyWith<_$AstroImpl> get copyWith =>
      __$$AstroImplCopyWithImpl<_$AstroImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AstroImplToJson(
      this,
    );
  }
}

abstract class _Astro implements Astro {
  const factory _Astro(
      {required final String sunrise,
      required final String sunset,
      required final String moonrise,
      required final String moonset,
      required final String moon_phase,
      required final int moon_illumination,
      required final int is_moon_up,
      required final int is_sun_up}) = _$AstroImpl;

  factory _Astro.fromJson(Map<String, dynamic> json) = _$AstroImpl.fromJson;

  @override
  String get sunrise;
  @override
  String get sunset;
  @override
  String get moonrise;
  @override
  String get moonset;
  @override
  String get moon_phase;
  @override
  int get moon_illumination;
  @override
  int get is_moon_up;
  @override
  int get is_sun_up;

  /// Create a copy of Astro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AstroImplCopyWith<_$AstroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Hour _$HourFromJson(Map<String, dynamic> json) {
  return _Hour.fromJson(json);
}

/// @nodoc
mixin _$Hour {
  int get time_epoch => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  double get temp_c => throw _privateConstructorUsedError;
  double get temp_f => throw _privateConstructorUsedError;
  int get is_day => throw _privateConstructorUsedError;
  WeatherCondition get condition => throw _privateConstructorUsedError;
  double get wind_mph => throw _privateConstructorUsedError;
  double get wind_kph => throw _privateConstructorUsedError;
  int get wind_degree => throw _privateConstructorUsedError;
  String get wind_dir => throw _privateConstructorUsedError;
  double get pressure_mb => throw _privateConstructorUsedError;
  double get pressure_in => throw _privateConstructorUsedError;
  double get precip_mm => throw _privateConstructorUsedError;
  double get precip_in => throw _privateConstructorUsedError;
  double get snow_cm => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get cloud => throw _privateConstructorUsedError;
  double get feelslike_c => throw _privateConstructorUsedError;
  double get feelslike_f => throw _privateConstructorUsedError;
  double get windchill_c => throw _privateConstructorUsedError;
  double get windchill_f => throw _privateConstructorUsedError;
  double get heatindex_c => throw _privateConstructorUsedError;
  double get heatindex_f => throw _privateConstructorUsedError;
  double get dewpoint_c => throw _privateConstructorUsedError;
  double get dewpoint_f => throw _privateConstructorUsedError;
  int get will_it_rain => throw _privateConstructorUsedError;
  int get chance_of_rain => throw _privateConstructorUsedError;
  int get will_it_snow => throw _privateConstructorUsedError;
  int get chance_of_snow => throw _privateConstructorUsedError;
  double get vis_km => throw _privateConstructorUsedError;
  double get vis_miles => throw _privateConstructorUsedError;
  double get gust_mph => throw _privateConstructorUsedError;
  double get gust_kph => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;

  /// Serializes this Hour to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Hour
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourCopyWith<Hour> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourCopyWith<$Res> {
  factory $HourCopyWith(Hour value, $Res Function(Hour) then) =
      _$HourCopyWithImpl<$Res, Hour>;
  @useResult
  $Res call(
      {int time_epoch,
      String time,
      double temp_c,
      double temp_f,
      int is_day,
      WeatherCondition condition,
      double wind_mph,
      double wind_kph,
      int wind_degree,
      String wind_dir,
      double pressure_mb,
      double pressure_in,
      double precip_mm,
      double precip_in,
      double snow_cm,
      int humidity,
      int cloud,
      double feelslike_c,
      double feelslike_f,
      double windchill_c,
      double windchill_f,
      double heatindex_c,
      double heatindex_f,
      double dewpoint_c,
      double dewpoint_f,
      int will_it_rain,
      int chance_of_rain,
      int will_it_snow,
      int chance_of_snow,
      double vis_km,
      double vis_miles,
      double gust_mph,
      double gust_kph,
      double uv});

  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$HourCopyWithImpl<$Res, $Val extends Hour>
    implements $HourCopyWith<$Res> {
  _$HourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Hour
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time_epoch = null,
    Object? time = null,
    Object? temp_c = null,
    Object? temp_f = null,
    Object? is_day = null,
    Object? condition = null,
    Object? wind_mph = null,
    Object? wind_kph = null,
    Object? wind_degree = null,
    Object? wind_dir = null,
    Object? pressure_mb = null,
    Object? pressure_in = null,
    Object? precip_mm = null,
    Object? precip_in = null,
    Object? snow_cm = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelslike_c = null,
    Object? feelslike_f = null,
    Object? windchill_c = null,
    Object? windchill_f = null,
    Object? heatindex_c = null,
    Object? heatindex_f = null,
    Object? dewpoint_c = null,
    Object? dewpoint_f = null,
    Object? will_it_rain = null,
    Object? chance_of_rain = null,
    Object? will_it_snow = null,
    Object? chance_of_snow = null,
    Object? vis_km = null,
    Object? vis_miles = null,
    Object? gust_mph = null,
    Object? gust_kph = null,
    Object? uv = null,
  }) {
    return _then(_value.copyWith(
      time_epoch: null == time_epoch
          ? _value.time_epoch
          : time_epoch // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temp_c: null == temp_c
          ? _value.temp_c
          : temp_c // ignore: cast_nullable_to_non_nullable
              as double,
      temp_f: null == temp_f
          ? _value.temp_f
          : temp_f // ignore: cast_nullable_to_non_nullable
              as double,
      is_day: null == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      wind_mph: null == wind_mph
          ? _value.wind_mph
          : wind_mph // ignore: cast_nullable_to_non_nullable
              as double,
      wind_kph: null == wind_kph
          ? _value.wind_kph
          : wind_kph // ignore: cast_nullable_to_non_nullable
              as double,
      wind_degree: null == wind_degree
          ? _value.wind_degree
          : wind_degree // ignore: cast_nullable_to_non_nullable
              as int,
      wind_dir: null == wind_dir
          ? _value.wind_dir
          : wind_dir // ignore: cast_nullable_to_non_nullable
              as String,
      pressure_mb: null == pressure_mb
          ? _value.pressure_mb
          : pressure_mb // ignore: cast_nullable_to_non_nullable
              as double,
      pressure_in: null == pressure_in
          ? _value.pressure_in
          : pressure_in // ignore: cast_nullable_to_non_nullable
              as double,
      precip_mm: null == precip_mm
          ? _value.precip_mm
          : precip_mm // ignore: cast_nullable_to_non_nullable
              as double,
      precip_in: null == precip_in
          ? _value.precip_in
          : precip_in // ignore: cast_nullable_to_non_nullable
              as double,
      snow_cm: null == snow_cm
          ? _value.snow_cm
          : snow_cm // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelslike_c: null == feelslike_c
          ? _value.feelslike_c
          : feelslike_c // ignore: cast_nullable_to_non_nullable
              as double,
      feelslike_f: null == feelslike_f
          ? _value.feelslike_f
          : feelslike_f // ignore: cast_nullable_to_non_nullable
              as double,
      windchill_c: null == windchill_c
          ? _value.windchill_c
          : windchill_c // ignore: cast_nullable_to_non_nullable
              as double,
      windchill_f: null == windchill_f
          ? _value.windchill_f
          : windchill_f // ignore: cast_nullable_to_non_nullable
              as double,
      heatindex_c: null == heatindex_c
          ? _value.heatindex_c
          : heatindex_c // ignore: cast_nullable_to_non_nullable
              as double,
      heatindex_f: null == heatindex_f
          ? _value.heatindex_f
          : heatindex_f // ignore: cast_nullable_to_non_nullable
              as double,
      dewpoint_c: null == dewpoint_c
          ? _value.dewpoint_c
          : dewpoint_c // ignore: cast_nullable_to_non_nullable
              as double,
      dewpoint_f: null == dewpoint_f
          ? _value.dewpoint_f
          : dewpoint_f // ignore: cast_nullable_to_non_nullable
              as double,
      will_it_rain: null == will_it_rain
          ? _value.will_it_rain
          : will_it_rain // ignore: cast_nullable_to_non_nullable
              as int,
      chance_of_rain: null == chance_of_rain
          ? _value.chance_of_rain
          : chance_of_rain // ignore: cast_nullable_to_non_nullable
              as int,
      will_it_snow: null == will_it_snow
          ? _value.will_it_snow
          : will_it_snow // ignore: cast_nullable_to_non_nullable
              as int,
      chance_of_snow: null == chance_of_snow
          ? _value.chance_of_snow
          : chance_of_snow // ignore: cast_nullable_to_non_nullable
              as int,
      vis_km: null == vis_km
          ? _value.vis_km
          : vis_km // ignore: cast_nullable_to_non_nullable
              as double,
      vis_miles: null == vis_miles
          ? _value.vis_miles
          : vis_miles // ignore: cast_nullable_to_non_nullable
              as double,
      gust_mph: null == gust_mph
          ? _value.gust_mph
          : gust_mph // ignore: cast_nullable_to_non_nullable
              as double,
      gust_kph: null == gust_kph
          ? _value.gust_kph
          : gust_kph // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of Hour
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherConditionCopyWith<$Res> get condition {
    return $WeatherConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HourImplCopyWith<$Res> implements $HourCopyWith<$Res> {
  factory _$$HourImplCopyWith(
          _$HourImpl value, $Res Function(_$HourImpl) then) =
      __$$HourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int time_epoch,
      String time,
      double temp_c,
      double temp_f,
      int is_day,
      WeatherCondition condition,
      double wind_mph,
      double wind_kph,
      int wind_degree,
      String wind_dir,
      double pressure_mb,
      double pressure_in,
      double precip_mm,
      double precip_in,
      double snow_cm,
      int humidity,
      int cloud,
      double feelslike_c,
      double feelslike_f,
      double windchill_c,
      double windchill_f,
      double heatindex_c,
      double heatindex_f,
      double dewpoint_c,
      double dewpoint_f,
      int will_it_rain,
      int chance_of_rain,
      int will_it_snow,
      int chance_of_snow,
      double vis_km,
      double vis_miles,
      double gust_mph,
      double gust_kph,
      double uv});

  @override
  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$HourImplCopyWithImpl<$Res>
    extends _$HourCopyWithImpl<$Res, _$HourImpl>
    implements _$$HourImplCopyWith<$Res> {
  __$$HourImplCopyWithImpl(_$HourImpl _value, $Res Function(_$HourImpl) _then)
      : super(_value, _then);

  /// Create a copy of Hour
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time_epoch = null,
    Object? time = null,
    Object? temp_c = null,
    Object? temp_f = null,
    Object? is_day = null,
    Object? condition = null,
    Object? wind_mph = null,
    Object? wind_kph = null,
    Object? wind_degree = null,
    Object? wind_dir = null,
    Object? pressure_mb = null,
    Object? pressure_in = null,
    Object? precip_mm = null,
    Object? precip_in = null,
    Object? snow_cm = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelslike_c = null,
    Object? feelslike_f = null,
    Object? windchill_c = null,
    Object? windchill_f = null,
    Object? heatindex_c = null,
    Object? heatindex_f = null,
    Object? dewpoint_c = null,
    Object? dewpoint_f = null,
    Object? will_it_rain = null,
    Object? chance_of_rain = null,
    Object? will_it_snow = null,
    Object? chance_of_snow = null,
    Object? vis_km = null,
    Object? vis_miles = null,
    Object? gust_mph = null,
    Object? gust_kph = null,
    Object? uv = null,
  }) {
    return _then(_$HourImpl(
      time_epoch: null == time_epoch
          ? _value.time_epoch
          : time_epoch // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temp_c: null == temp_c
          ? _value.temp_c
          : temp_c // ignore: cast_nullable_to_non_nullable
              as double,
      temp_f: null == temp_f
          ? _value.temp_f
          : temp_f // ignore: cast_nullable_to_non_nullable
              as double,
      is_day: null == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      wind_mph: null == wind_mph
          ? _value.wind_mph
          : wind_mph // ignore: cast_nullable_to_non_nullable
              as double,
      wind_kph: null == wind_kph
          ? _value.wind_kph
          : wind_kph // ignore: cast_nullable_to_non_nullable
              as double,
      wind_degree: null == wind_degree
          ? _value.wind_degree
          : wind_degree // ignore: cast_nullable_to_non_nullable
              as int,
      wind_dir: null == wind_dir
          ? _value.wind_dir
          : wind_dir // ignore: cast_nullable_to_non_nullable
              as String,
      pressure_mb: null == pressure_mb
          ? _value.pressure_mb
          : pressure_mb // ignore: cast_nullable_to_non_nullable
              as double,
      pressure_in: null == pressure_in
          ? _value.pressure_in
          : pressure_in // ignore: cast_nullable_to_non_nullable
              as double,
      precip_mm: null == precip_mm
          ? _value.precip_mm
          : precip_mm // ignore: cast_nullable_to_non_nullable
              as double,
      precip_in: null == precip_in
          ? _value.precip_in
          : precip_in // ignore: cast_nullable_to_non_nullable
              as double,
      snow_cm: null == snow_cm
          ? _value.snow_cm
          : snow_cm // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelslike_c: null == feelslike_c
          ? _value.feelslike_c
          : feelslike_c // ignore: cast_nullable_to_non_nullable
              as double,
      feelslike_f: null == feelslike_f
          ? _value.feelslike_f
          : feelslike_f // ignore: cast_nullable_to_non_nullable
              as double,
      windchill_c: null == windchill_c
          ? _value.windchill_c
          : windchill_c // ignore: cast_nullable_to_non_nullable
              as double,
      windchill_f: null == windchill_f
          ? _value.windchill_f
          : windchill_f // ignore: cast_nullable_to_non_nullable
              as double,
      heatindex_c: null == heatindex_c
          ? _value.heatindex_c
          : heatindex_c // ignore: cast_nullable_to_non_nullable
              as double,
      heatindex_f: null == heatindex_f
          ? _value.heatindex_f
          : heatindex_f // ignore: cast_nullable_to_non_nullable
              as double,
      dewpoint_c: null == dewpoint_c
          ? _value.dewpoint_c
          : dewpoint_c // ignore: cast_nullable_to_non_nullable
              as double,
      dewpoint_f: null == dewpoint_f
          ? _value.dewpoint_f
          : dewpoint_f // ignore: cast_nullable_to_non_nullable
              as double,
      will_it_rain: null == will_it_rain
          ? _value.will_it_rain
          : will_it_rain // ignore: cast_nullable_to_non_nullable
              as int,
      chance_of_rain: null == chance_of_rain
          ? _value.chance_of_rain
          : chance_of_rain // ignore: cast_nullable_to_non_nullable
              as int,
      will_it_snow: null == will_it_snow
          ? _value.will_it_snow
          : will_it_snow // ignore: cast_nullable_to_non_nullable
              as int,
      chance_of_snow: null == chance_of_snow
          ? _value.chance_of_snow
          : chance_of_snow // ignore: cast_nullable_to_non_nullable
              as int,
      vis_km: null == vis_km
          ? _value.vis_km
          : vis_km // ignore: cast_nullable_to_non_nullable
              as double,
      vis_miles: null == vis_miles
          ? _value.vis_miles
          : vis_miles // ignore: cast_nullable_to_non_nullable
              as double,
      gust_mph: null == gust_mph
          ? _value.gust_mph
          : gust_mph // ignore: cast_nullable_to_non_nullable
              as double,
      gust_kph: null == gust_kph
          ? _value.gust_kph
          : gust_kph // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourImpl implements _Hour {
  const _$HourImpl(
      {required this.time_epoch,
      required this.time,
      required this.temp_c,
      required this.temp_f,
      required this.is_day,
      required this.condition,
      required this.wind_mph,
      required this.wind_kph,
      required this.wind_degree,
      required this.wind_dir,
      required this.pressure_mb,
      required this.pressure_in,
      required this.precip_mm,
      required this.precip_in,
      required this.snow_cm,
      required this.humidity,
      required this.cloud,
      required this.feelslike_c,
      required this.feelslike_f,
      required this.windchill_c,
      required this.windchill_f,
      required this.heatindex_c,
      required this.heatindex_f,
      required this.dewpoint_c,
      required this.dewpoint_f,
      required this.will_it_rain,
      required this.chance_of_rain,
      required this.will_it_snow,
      required this.chance_of_snow,
      required this.vis_km,
      required this.vis_miles,
      required this.gust_mph,
      required this.gust_kph,
      required this.uv});

  factory _$HourImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourImplFromJson(json);

  @override
  final int time_epoch;
  @override
  final String time;
  @override
  final double temp_c;
  @override
  final double temp_f;
  @override
  final int is_day;
  @override
  final WeatherCondition condition;
  @override
  final double wind_mph;
  @override
  final double wind_kph;
  @override
  final int wind_degree;
  @override
  final String wind_dir;
  @override
  final double pressure_mb;
  @override
  final double pressure_in;
  @override
  final double precip_mm;
  @override
  final double precip_in;
  @override
  final double snow_cm;
  @override
  final int humidity;
  @override
  final int cloud;
  @override
  final double feelslike_c;
  @override
  final double feelslike_f;
  @override
  final double windchill_c;
  @override
  final double windchill_f;
  @override
  final double heatindex_c;
  @override
  final double heatindex_f;
  @override
  final double dewpoint_c;
  @override
  final double dewpoint_f;
  @override
  final int will_it_rain;
  @override
  final int chance_of_rain;
  @override
  final int will_it_snow;
  @override
  final int chance_of_snow;
  @override
  final double vis_km;
  @override
  final double vis_miles;
  @override
  final double gust_mph;
  @override
  final double gust_kph;
  @override
  final double uv;

  @override
  String toString() {
    return 'Hour(time_epoch: $time_epoch, time: $time, temp_c: $temp_c, temp_f: $temp_f, is_day: $is_day, condition: $condition, wind_mph: $wind_mph, wind_kph: $wind_kph, wind_degree: $wind_degree, wind_dir: $wind_dir, pressure_mb: $pressure_mb, pressure_in: $pressure_in, precip_mm: $precip_mm, precip_in: $precip_in, snow_cm: $snow_cm, humidity: $humidity, cloud: $cloud, feelslike_c: $feelslike_c, feelslike_f: $feelslike_f, windchill_c: $windchill_c, windchill_f: $windchill_f, heatindex_c: $heatindex_c, heatindex_f: $heatindex_f, dewpoint_c: $dewpoint_c, dewpoint_f: $dewpoint_f, will_it_rain: $will_it_rain, chance_of_rain: $chance_of_rain, will_it_snow: $will_it_snow, chance_of_snow: $chance_of_snow, vis_km: $vis_km, vis_miles: $vis_miles, gust_mph: $gust_mph, gust_kph: $gust_kph, uv: $uv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourImpl &&
            (identical(other.time_epoch, time_epoch) ||
                other.time_epoch == time_epoch) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temp_c, temp_c) || other.temp_c == temp_c) &&
            (identical(other.temp_f, temp_f) || other.temp_f == temp_f) &&
            (identical(other.is_day, is_day) || other.is_day == is_day) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.wind_mph, wind_mph) ||
                other.wind_mph == wind_mph) &&
            (identical(other.wind_kph, wind_kph) ||
                other.wind_kph == wind_kph) &&
            (identical(other.wind_degree, wind_degree) ||
                other.wind_degree == wind_degree) &&
            (identical(other.wind_dir, wind_dir) ||
                other.wind_dir == wind_dir) &&
            (identical(other.pressure_mb, pressure_mb) ||
                other.pressure_mb == pressure_mb) &&
            (identical(other.pressure_in, pressure_in) ||
                other.pressure_in == pressure_in) &&
            (identical(other.precip_mm, precip_mm) ||
                other.precip_mm == precip_mm) &&
            (identical(other.precip_in, precip_in) ||
                other.precip_in == precip_in) &&
            (identical(other.snow_cm, snow_cm) || other.snow_cm == snow_cm) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.feelslike_c, feelslike_c) ||
                other.feelslike_c == feelslike_c) &&
            (identical(other.feelslike_f, feelslike_f) ||
                other.feelslike_f == feelslike_f) &&
            (identical(other.windchill_c, windchill_c) ||
                other.windchill_c == windchill_c) &&
            (identical(other.windchill_f, windchill_f) ||
                other.windchill_f == windchill_f) &&
            (identical(other.heatindex_c, heatindex_c) ||
                other.heatindex_c == heatindex_c) &&
            (identical(other.heatindex_f, heatindex_f) ||
                other.heatindex_f == heatindex_f) &&
            (identical(other.dewpoint_c, dewpoint_c) ||
                other.dewpoint_c == dewpoint_c) &&
            (identical(other.dewpoint_f, dewpoint_f) ||
                other.dewpoint_f == dewpoint_f) &&
            (identical(other.will_it_rain, will_it_rain) ||
                other.will_it_rain == will_it_rain) &&
            (identical(other.chance_of_rain, chance_of_rain) ||
                other.chance_of_rain == chance_of_rain) &&
            (identical(other.will_it_snow, will_it_snow) ||
                other.will_it_snow == will_it_snow) &&
            (identical(other.chance_of_snow, chance_of_snow) ||
                other.chance_of_snow == chance_of_snow) &&
            (identical(other.vis_km, vis_km) || other.vis_km == vis_km) &&
            (identical(other.vis_miles, vis_miles) ||
                other.vis_miles == vis_miles) &&
            (identical(other.gust_mph, gust_mph) ||
                other.gust_mph == gust_mph) &&
            (identical(other.gust_kph, gust_kph) ||
                other.gust_kph == gust_kph) &&
            (identical(other.uv, uv) || other.uv == uv));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        time_epoch,
        time,
        temp_c,
        temp_f,
        is_day,
        condition,
        wind_mph,
        wind_kph,
        wind_degree,
        wind_dir,
        pressure_mb,
        pressure_in,
        precip_mm,
        precip_in,
        snow_cm,
        humidity,
        cloud,
        feelslike_c,
        feelslike_f,
        windchill_c,
        windchill_f,
        heatindex_c,
        heatindex_f,
        dewpoint_c,
        dewpoint_f,
        will_it_rain,
        chance_of_rain,
        will_it_snow,
        chance_of_snow,
        vis_km,
        vis_miles,
        gust_mph,
        gust_kph,
        uv
      ]);

  /// Create a copy of Hour
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourImplCopyWith<_$HourImpl> get copyWith =>
      __$$HourImplCopyWithImpl<_$HourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourImplToJson(
      this,
    );
  }
}

abstract class _Hour implements Hour {
  const factory _Hour(
      {required final int time_epoch,
      required final String time,
      required final double temp_c,
      required final double temp_f,
      required final int is_day,
      required final WeatherCondition condition,
      required final double wind_mph,
      required final double wind_kph,
      required final int wind_degree,
      required final String wind_dir,
      required final double pressure_mb,
      required final double pressure_in,
      required final double precip_mm,
      required final double precip_in,
      required final double snow_cm,
      required final int humidity,
      required final int cloud,
      required final double feelslike_c,
      required final double feelslike_f,
      required final double windchill_c,
      required final double windchill_f,
      required final double heatindex_c,
      required final double heatindex_f,
      required final double dewpoint_c,
      required final double dewpoint_f,
      required final int will_it_rain,
      required final int chance_of_rain,
      required final int will_it_snow,
      required final int chance_of_snow,
      required final double vis_km,
      required final double vis_miles,
      required final double gust_mph,
      required final double gust_kph,
      required final double uv}) = _$HourImpl;

  factory _Hour.fromJson(Map<String, dynamic> json) = _$HourImpl.fromJson;

  @override
  int get time_epoch;
  @override
  String get time;
  @override
  double get temp_c;
  @override
  double get temp_f;
  @override
  int get is_day;
  @override
  WeatherCondition get condition;
  @override
  double get wind_mph;
  @override
  double get wind_kph;
  @override
  int get wind_degree;
  @override
  String get wind_dir;
  @override
  double get pressure_mb;
  @override
  double get pressure_in;
  @override
  double get precip_mm;
  @override
  double get precip_in;
  @override
  double get snow_cm;
  @override
  int get humidity;
  @override
  int get cloud;
  @override
  double get feelslike_c;
  @override
  double get feelslike_f;
  @override
  double get windchill_c;
  @override
  double get windchill_f;
  @override
  double get heatindex_c;
  @override
  double get heatindex_f;
  @override
  double get dewpoint_c;
  @override
  double get dewpoint_f;
  @override
  int get will_it_rain;
  @override
  int get chance_of_rain;
  @override
  int get will_it_snow;
  @override
  int get chance_of_snow;
  @override
  double get vis_km;
  @override
  double get vis_miles;
  @override
  double get gust_mph;
  @override
  double get gust_kph;
  @override
  double get uv;

  /// Create a copy of Hour
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourImplCopyWith<_$HourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
