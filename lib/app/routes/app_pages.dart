import 'home_routes.dart';
import 'splash_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/splash';

  static final routes = [
    ...HomeRoutes.routes,
		...SplashRoutes.routes,
  ];
}
