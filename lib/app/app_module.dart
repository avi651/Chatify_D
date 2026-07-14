import 'package:flutter_modular/flutter_modular.dart';

import '../presentation/splash_page.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (_) => const SplashPage());
  }

  @override
  void register(ModularContext c) {
    // TODO: implement register
  }
}
