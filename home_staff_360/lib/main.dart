import 'package:flutter/material.dart';
import 'package:home_staff_360/screens/signup.dart';
import 'package:home_staff_360/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColor.white,
        inputDecorationTheme: AppInputDecoration.inputDecorationTheme(false),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        // scaffoldBackgroundColor: AppColor.neutral_100,
        scaffoldBackgroundColor: AppColor.white,
        inputDecorationTheme: AppInputDecoration.inputDecorationTheme(false),
      ),
      themeMode: ThemeMode.system,
      home: SignupScreen(),
    );
  }
}