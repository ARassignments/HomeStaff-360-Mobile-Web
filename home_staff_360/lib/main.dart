import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_staff_360/screens/onboarding_screen.dart';
import 'package:home_staff_360/screens/splash_screen.dart';
import 'package:home_staff_360/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
        iconTheme: IconThemeData(
          color: AppColor.neutral_10,
        ),
        primaryColor: AppColor.black,
      ),
      darkTheme: ThemeData(
        // brightness: Brightness.light,
        // scaffoldBackgroundColor: AppColor.white,
        // inputDecorationTheme: AppInputDecoration.inputDecorationTheme(false),
        iconTheme: IconThemeData(
          color: AppColor.neutral_70,
        ),
        primaryColor: AppColor.black,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColor.neutral_100,
        inputDecorationTheme: AppInputDecoration.inputDecorationTheme(true),
      ),
      themeMode: ThemeMode.system,
      home: SplashScreen(
        nextScreen: const OnboardingScreen(),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}