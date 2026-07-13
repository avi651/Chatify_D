import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  void binds(i) {
    // Core dependencies

    // Example:
    // i.addSingleton<ApiClient>(
    //   ApiClient.new,
    // );
  }

  @override
  void register(ModularContext c) {
    // TODO: implement register
  }
}

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  void binds(i) {
    // App level dependencies
  }

  @override
  void routes(r) {
    // Routes

    // Example:
    // r.child(
    //   '/',
    //   child: (_) => const SplashPage(),
    // );
  }

  @override
  void register(ModularContext c) {
    // TODO: implement register
  }
}
