import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreen();
}

class _StartScreen extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/StartScreen.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: const [
            TextButton(
              onPressed: null,
              child: Text('Get Started'),
            )
          ],
        ));
  }
}
//onPressed: (() => Navigator.pushNamed(context, '/')),