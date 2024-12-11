import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:http/http.dart' as http;

import '../../constants/app_strings.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;
  final InternetConnectionChecker internetConnectionChecker;

  const NetworkInfoImpl({
    required this.connectivity,
    required this.internetConnectionChecker,
  });

  @override
  Future<bool> get isConnected async {
    try {
      bool isDeviceConnected = false;
      final connectivityResult = await connectivity.checkConnectivity();
      debugPrint('Connectivity Result: $connectivityResult');

      if (connectivityResult != ConnectivityResult.none) {
        isDeviceConnected = await internetConnectionChecker.hasConnection ||
            await hasInternetConnection();
      }
      debugPrint('Device Connected: $isDeviceConnected');
      return isDeviceConnected;
    } catch (e) {
      debugPrint('Error checking network connection: $e');
      return false;
    }
  }

  Future<bool> hasInternetConnection() async {
    try {
      final response = await http.get(Uri.parse(AppStrings.googleURL)).timeout(
        const Duration(seconds: 5),
      );
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      debugPrint('Error checking internet connection: $e');
    }
    return false;
  }
}
