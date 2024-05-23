import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/Screens/IntroScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Clean Code",
        home: AnimatedSplashScreen(
          splashIconSize: double.infinity,
          duration: 2000,
          splash: Container(
            height: 1.sh,
            width: 1.sw,
            decoration: const BoxDecoration(color: Colors.white),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Container(
                  height: 0.2.sh,
                  width: 0.8.sw,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/Images/logo.png",
                          ),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
          ),
          nextScreen: const IntroScreen(),
          splashTransition: SplashTransition.fadeTransition,
        ));
  }
}
