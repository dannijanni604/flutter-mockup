import 'package:get/get.dart';
import 'package:tourism/controllers/controllers.dart';
import 'package:tourism/views/auth/login_view.dart';
import 'package:tourism/views/home/home_view.dart';
import 'package:tourism/views/splash/splash_view.dart';

abstract class Routes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
}

class AppPages {
  static const String initial = Routes.splash;
  static final List<GetPage> routes = <GetPage>[
    GetPage(
      name: Routes.splash,
      page: () => const SplashView(),
      binding: BindingsBuilder.put(
        () => SplashController(),
      ),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginView(),
      binding: BindingsBuilder.put(
        () => LoginController(),
      ),
    ),
  ];
}
