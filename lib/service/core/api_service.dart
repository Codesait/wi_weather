import 'package:wi_weather_app/src/utils.dart';
import 'package:http/http.dart' as http;

class ApiService{
  final log = getLogger('Logger');
  final client = http.Client();
}