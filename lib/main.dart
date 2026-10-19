import 'package:device_preview/device_preview.dart';
import 'package:facebook_app/home_screen.dart';
import 'package:facebook_app/login_screen.dart';
import 'package:facebook_app/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
    DevicePreview.enable();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => SplashScreen(),
        LoginScreen.routeName : (context) => LoginScreen(),
        HomeScreen.routeName :(context) =>  HomeScreen(),
      },

    );
  }
}


