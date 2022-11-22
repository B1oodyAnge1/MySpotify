import 'package:flutter/material.dart';

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
            child: Container(
              width: 329,
              height: 72,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(66, 200, 60, 1),
                  borderRadius: BorderRadius.circular(30)),
              child: const TextButton(
                onPressed: null,
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
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
        ],
      ),
    );
  }
}
//onPressed: (() => Navigator.pushNamed(context, '/')),
