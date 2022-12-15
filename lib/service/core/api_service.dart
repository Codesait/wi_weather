import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:wi_weather_app/src/utils.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final clog = getLogger('Logger');
  final client = http.Client();

  final NetworkInfo networkInfo = NetworkInfo();

  Future<dynamic> getMth(
    Uri uri, {
    Map<String, String>? headers,
  }) async {
    clog.i('Making request to $uri');

    try {
      if (await networkInfo.isConnected) {
        final response = await client
            .get(
              uri,
              headers: headers,
            )
            .timeout(
              const Duration(seconds: 30),
            );

        return _response(response);
      } else {
        Tst.show('Network Anomaly');
      }
    } on SocketException catch (e) {
      clog.e(e);
      Tst.show('Connection error\nCheck internet and try again');
      throw HttpException('$e');
    } on TimeoutException {
      Tst.show('Request timed out');
    } catch (error) {
      throw HttpException('Something went wrong, $error');
    }
  }

  // RESPONSE DECODING
  dynamic _response(
    http.Response response,
  ) async {
    switch (response.statusCode) {
      case 200:

        ///* This is a catch block for when the server returns a 200 ok status.
        clog.i(response.statusCode);
        log(response.body);
        return response.body;
      case 201:

        ///* This is a catch block for when the server returns a 201 created status.
        clog.i(response.statusCode);
        clog.i(response.body);
        return response.body;
      case 400:

        ///* This is a catch block for when the server returns a 400 bad request status.
        clog.e(response.statusCode);

        throw Exception(response.body);
      case 401:

        ///* This is a catch block for when the server returns a 401 unauthorised error.
        clog.e(response.statusCode);
        Tst.show('Unauthorised');

        throw Exception(response.body);

      case 403:

        ///* This is a catch block for when the server returns a 403 unauthorised error.
        clog.e(response.body);
        throw Exception(response.body);

      case 500:
      default:

        ///* This is a catch block for when the server returns a 500 error.
        Tst.show(
          'Error occured while Communicating with Server with\nStatusCode: ${response.statusCode}',
        );
        throw Exception(
          'Error occured while Communication with Server with StatusCode: ${response.statusCode}',
        );
    }
  }
}
