import 'package:flutter/material.dart';
import 'package:flutter_job_seeking/detail_job_screen.dart';
import 'package:flutter_job_seeking/home_screen.dart';
import 'package:flutter_job_seeking/login.dart';
import 'package:flutter_job_seeking/splash_screen.dart';

class AppRouteName {
  static const String splashsScreen = "/SplashScreen";
  static const String login = "/login.dart";
  static const String home = "/home";
  static const String detailJob = "/detail-job";
}

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.splashsScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: settings,
        );
      case AppRouteName.login:
        return MaterialPageRoute(
          builder: (_) => const Login(),
          settings: settings,
        );

      case AppRouteName.home:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const HomeScreen(AutofillHints.username),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.detailJob:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const DetailJobScreen(),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    }

    return null;
  }
}
