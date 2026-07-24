import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class SecureStorage {
  final FlutterSecureStorage storage;

  SecureStorage({required this.storage});

  Future<void> saveAccessToken(String token) async {
    await storage.write(key: "access_token", value: token);
  }

  Future<String?> getAccessToken() async {
    return await storage.read(key: "access_token");
  }

  Future<int?> getUserIdFromToken() async {
    final token = await getAccessToken();

    if (token == null) {
      return null;
    }

    final payload = JwtDecoder.decode(token);

    return payload["user_id"];
  }

  Future<void> clear() async {
    await storage.deleteAll();
  }
}
