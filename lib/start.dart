import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'start_screen.dart';

class Spotify extends StatelessWidget {
  const Spotify({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(241, 241, 241, 1),
      child: AnimatedSplashScreen(
        splash: const Image(
          width: 196,
          height: 59,
          image: AssetImage('assets/StartSpotify.jpg'),
        ),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
        duration: 4400,
        nextScreen: const StartScreen(),
      ),
    );
  }
}
