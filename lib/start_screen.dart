import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'choose_mode.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreen();
}

class _StartScreen extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Image.asset(
            "assets/StartScreen.png",
            height: myHeight,
            width: myWidth,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 35,
            child: GestureDetector(
              onTap: (() =>
                  Navigator.pushNamed(context, '/2', arguments: 'aaaaaaaaa')),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 85,
                  right: 85,
                  top: 16,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(66, 200, 60, 1),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 69,
            child: SizedBox(
              width: 370,
              height: 149,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(121, 121, 121, 1),
                  decoration: TextDecoration.none,
                  fontSize: 19,
                  fontFamily: 'Satoshi',
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 109,
            child: SizedBox(
              width: 380,
              height: 149,
              child: Text(
                'Enjoy listening to music',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(218, 218, 218, 1),
                  decoration: TextDecoration.none,
                  fontSize: 25,
                  fontFamily: 'Satoshi',
                ),
              ),
            ),
          ),
          Positioned(
            top: 1,
            left: 97,
            right: 97,
            child: SvgPicture.asset(
              'assets/img/StartSpotify.svg',
              height: 69,
              width: 196,
            ),
          ),
        ],
      ),
    );
  }
}
//onPressed: (() => Navigator.pushNamed(context, '/')),
