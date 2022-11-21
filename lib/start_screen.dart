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
      child: Column(
        children: [
          TextButton(
            onPressed: (() => Navigator.pushNamed(context, '/')),
            child: Text('2'),
          ),
        ],
      ),
    );
  }
}