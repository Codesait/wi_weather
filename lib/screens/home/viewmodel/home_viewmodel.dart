import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wi_weather_app/service/location/location_service.dart';

final homeViewModel = ChangeNotifierProvider((_) => HomeViewModel());

class HomeViewModel extends ChangeNotifier {
  final locationService = LocationService();

  bool? isLocationEnabled;

  String? longitude;
  String? latitude;

  Future<void> load() async {
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
            //* POSITIONS
            locationService.initPosition().then((value) {
              longitude = value.longitude.toString();
              latitude = value.latitude.toString();
            });
          }),
        );
      },
    );
  }
}
