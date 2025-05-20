import 'package:flutter/material.dart';
import 'package:flutter_bloc_base/page/login/login_page.dart';
import 'package:flutter_bloc_base/page/splash/SplashPage.dart';

class RouteName {
  static const String Default = '/';
  static const String Home = 'Home';
  static var data = [Home];
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.Default:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case RouteName.Home:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      default:
        return MaterialPageRoute(builder: (context) => const SplashPage());
    }
  }
}
