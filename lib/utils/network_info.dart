import 'package:internet_connection_checker/internet_connection_checker.dart';

/// [NetworkInfo] is used to check internet connection
/// and return the status of internet connection if [isConnected] is true/false
/// and is responsible for implementing the logics to check internet connection
/// and return the status of internet connection if [isConnected] is true/false
class NetworkInfo {
  /// [InternetConnectionChecker] is used to check internet connection
  final dataConnectionChecker = InternetConnectionChecker();

  Future<bool> get isConnected => dataConnectionChecker.hasConnection;
  bool get isCheckingForNetwork => dataConnectionChecker.isActivelyChecking;
}
