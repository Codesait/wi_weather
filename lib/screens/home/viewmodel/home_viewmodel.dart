import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wi_weather_app/service/location/location_service.dart';
import 'package:wi_weather_app/src/model.dart';

final homeViewModel = ChangeNotifierProvider((_) => HomeViewModel());

class HomeViewModel extends BaseModel {
  final locationService = LocationService();

  bool? isLocationEnabled;

  String? longitude;
  String? latitude;

  Location? _locationDetails;
  Location? get locationDetails => _locationDetails;

  Current? _currentWeather;
  Current? get currentWeather => _currentWeather;

  Forecast? _dailyForecast;
  Forecast? get dailyForecast => _dailyForecast;

  //* THIS METHOD IS CALLED ON APP HOME PAGE INITIALISATION
  Future<void> initLocation() async {
    loading(true);
    Future.wait(
      [
        locationService.locationServiceEnabled(),
        locationService.checkLocationPermisson(),
      ],
    ).then(
      (value) {
        //! CAN BE MODIFIED

        // TO ENSURE LOCATION PERMISSIONS AND SERVICE IS READY
        //INITIALLIZING POSITION WILL BE DELAYED
        Timer(
          const Duration(seconds: 2),
          (() {
            //* INITIALIZING GEOLOCATOR AND GETTING
            //* POSITIONS DATA
            locationService.initPosition().then((value) {
              longitude = value.longitude.toString();
              latitude = value.latitude.toString();

              //* LOG POSITION VALUES
              log('lat =$latitude\nlong =$longitude');

              /// This is to ensure that the latitude and longitude is not null before calling the
              /// getWeather function.
              if (latitude != null && longitude != null) {
                fetchWeather();
              }
            });
          }),
        );
      },
    );
  }

  //* THIS FUTURE METHODE FETCHES WEATHER FORCAST FROM WEATHER API
  Future<void> fetchWeather({bool? isReloading}) async {
    locationService
        .getWeather(
      longitude: longitude!,
      latitude: latitude!,
    )
        .then((value) {
      if (value != null) {
        //! TO BE CONTINUED
        // WHEN WE HAVE DATA,
        final data = Weather.fromJson(json.decode(value));
        _locationDetails = data.location;
        _currentWeather = data.current;
        _dailyForecast = data.forecast!;

        //  NOTIFY BUILD LISTENERS IF THIS IS A RELOAD CALL
        if (isLoading) {
          notifyListeners();
        }
      }
    }).whenComplete(() {
      loading(false);
    });
  }

  bool canShowView() {
    return !isLoading && _locationDetails != null;
  }
}
