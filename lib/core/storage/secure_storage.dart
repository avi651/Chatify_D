import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  SecureStorage._();
  static const _storage = FlutterSecureStorage();
  static const String accessTokenKey = "access_token";

  static Future<void> saveAccessToken(String token) async {
    await _storage.write(key: accessTokenKey, value: token);
  }

  static Future<String?> getAccessToken() async {
    return await _storage.read(key: accessTokenKey);
  }

  static Future<void> clearToken() async {
    await _storage.delete(key: accessTokenKey);
  }
}
