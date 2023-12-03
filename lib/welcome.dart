import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:newws/login.dart';

class welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen
        (
          splash: Image(image: AssetImage("assets/images/logo.png")),
          nextScreen: loginScreen(),
          splashIconSize: 500,
          duration: 5000,
        ),
    );
  }

}