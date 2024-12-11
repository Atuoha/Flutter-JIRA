import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/constants/app_strings.dart';

class SecureStorage {
  final FlutterSecureStorage storage;
  SecureStorage(this.storage);

  Future<void> saveToken(String token) async {

    try {
      await storage.write(key: AppStrings.API_TOKEN, value: token);
    } catch (e) {
      debugPrint("Error saving token to secure storage: $e");
      throw Exception("Error saving token to secure storage: $e");
    }
  }

  Future<String?> getToken() async {
    try {
      return await storage.read(key: AppStrings.API_TOKEN);
    } catch (e) {
      debugPrint("Error reading token from secure storage: $e");
      throw Exception("Error reading token from secure storage: $e");
    }
  }
}
