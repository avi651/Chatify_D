import 'dart:collection';
import 'dart:convert';

import 'package:crypto/crypto.dart';

class Env {
  static const appName = "Chatify";
  static const googleMapUrl = "";
  static const packageName = "com.abc.com.Chatify";

  static const environment = String.fromEnvironment('ENV', defaultValue: 'dev');

  static const baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'http://localhost:8000',
  );

  static const websocketUrl = String.fromEnvironment("WEBSOCKET_URL");

  //HydratedStoragePassword
  static const hydratedStoragePassword = String.fromEnvironment(
    'hydrated_Storage_Password',
  );

  static List<int> get hydratedStoragePasswordBytes =>
      sha256.convert(utf8.encode(hydratedStoragePassword)).bytes;

  static const features = String.fromEnvironment(
    'feature_flags',
    defaultValue: '',
  );

  /// FeatureFlag
  ///
  static final List<String> _featuresList = (const String.fromEnvironment(
    'feature_flags',
  )).replaceAll("\"", "").split(", ");

  static final _featuresMap = HashMap.from({
    for (final key in _featuresList) key: true,
  });

  static bool _hasFeature(String feature) => _featuresMap[feature] ?? false;

  static bool get useApi => !_hasFeature("mock");
  static bool get showDebugLogs => _hasFeature("show_logs");
}
