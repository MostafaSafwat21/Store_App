import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/core/common/screens/under_build_screen.dart';
import 'package:store/core/routes/base_routes.dart';
import 'package:store/core/routes/test_one_screen.dart';
import 'package:store/core/routes/test_two_screen.dart';

class AppRoutes{
  static const String testOne = 'testOne';
  static const String testTwo = 'testTwo';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case testOne:
        return BaseRoute(page: const TestOneScreen());
      case testTwo:
        return BaseRoute(page: const TestTwoScreen());
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
  // static const String splash = '/';
  // static const String home = '/home';
  // static const String login = '/login';
  // static const String register = '/register';
  // static const String forgotPassword = '/forgotPassword';
}