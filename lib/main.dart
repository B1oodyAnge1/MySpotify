import 'package:flutter/material.dart';
import 'package:spotify/choose_mode.dart';
import 'package:spotify/start.dart';
import 'package:spotify/start_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Spotify(),
      '/1': (context) => const StartScreen(),
      '/2': (context) => const ChooseMode(),
    },
  ));
}
