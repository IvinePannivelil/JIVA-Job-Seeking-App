import 'package:flutter/material.dart';
import 'package:flutter_job_seeking/app_route.dart';
import 'package:flutter_job_seeking/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Job Seeking",
      theme: AppTheme.light,
      themeMode: ThemeMode.dark,
      initialRoute: AppRouteName.splashsScreen,
      onGenerateRoute: AppRoute.generate,
    );
  }
}
