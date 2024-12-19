import 'dart:async';
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wi_weather_app/service/location/location_service.dart';
import 'package:wi_weather_app/src/model.dart';
import 'package:wi_weather_app/src/utils.dart';

part 'home_viewmodel.g.dart';

@riverpod
class HomeViewmodel extends _$HomeViewmodel {
  final viewModelRepo = ViewModelRepo();
  final log = getLogger('HomeViewmodel');

  @override
  FutureOr<dynamic> build() {
    return state;
  }

  Location? _location;
  CurrentWeather? _current;
  Forecast? _forecast;
  ForecastDay? _selectedDay;

  Location? get location => _location;
  CurrentWeather? get current => _current;
  Forecast? get forecast => _forecast;
  ForecastDay? get selectedDay => _selectedDay;


  Future<void> loadUserLocation() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final value = await viewModelRepo.loadUserLocation();
      if (value != null) {
        //* Fetches the weather forecast using the provided longitude and latitude
        //* values from the `viewModelRepo`.
        //* The `fetchWeather` method returns a `ForecastResponse` object.
        await viewModelRepo
            .fetchWeather(
          long: value.longitude.toString(),
          lat: value.latitude.toString(),
        )
            .then((forecast) {
          if (forecast != null) {
            //* The `ForecastResponse` object is then deconstructed to get the `location`,
            //* `current` and `forecast` objects.
            _location = forecast.location;
            _current = forecast.current;
            _forecast = forecast.forecast;
            _selectedDay = forecast.forecast.forecastday.first;
          }

          log.v('Maggi: $_location');
        });
      }
    });
  }
}

final homeViewModel = ChangeNotifierProvider((_) => ViewModelRepo());

class ViewModelRepo extends BaseModel {
  final locationService = LocationService();

  //* THIS METHOD IS CALLED ON APP HOME PAGE INITIALISATION
  Future<Position?> loadUserLocation() async {
    Position? position;

    await Future.wait([
      locationService.checkLocationPermisson(),
      locationService.locationServiceEnabled(),
    ]);

    if (await locationService.locationServiceEnabled()) {
      position = await locationService.initPosition();
    }

    return position;
  }

  //* THIS FUTURE METHODE FETCHES WEATHER FORCAST FROM WEATHER API
  Future<ForecastResponse?> fetchWeather({
    required String long,
    required String lat,
  }) async {
    ForecastResponse? decodedResponse;

    try {
      final response = await locationService.getWeather(
        longitude: long,
        latitude: lat,
      );

      final decodeResponse = jsonDecode(response as String);
      decodedResponse =
          ForecastResponse.fromJson(decodeResponse as Map<String, dynamic>);
    } catch (e) {
      getLogger('ViewModelRepo').e(e);
    }

    return decodedResponse;
  }

  void call() {
    notifyListeners();
  }
}
