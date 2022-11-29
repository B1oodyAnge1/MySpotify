import 'package:flutter/material.dart';
import 'package:spotify/choose_mode.dart';
import 'package:spotify/register.dart';
import 'package:spotify/signin.dart';
import 'package:spotify/register_sigin_in.dart';
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
      '/3': (context) => const RegSig(),
      '/4': (context) => const SignIn(),
      '/5': (context) => const Register(),
    },
  ));
}
