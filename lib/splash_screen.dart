import 'package:facebook_app/colors/colors_facebook.dart';
import 'package:facebook_app/image_widget.dart';
import 'package:facebook_app/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageWidget(
            imageText: 'App Rounded Logo.png',
            height: 86.94,
            width: 87.54,
            top: 294,
            left: 130,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 294, left: 130),
            child: Text(
              'From',
              style: TextStyle(color: ColorsFacebook.greyColor),
            ),
          ),
          ImageWidget(
            imageText: 'Meta Logo.png',
            width: 98,
            height: 40,
            top: 0,
            left: 130,
          ),
        ],
      ),
    );
  }
}
