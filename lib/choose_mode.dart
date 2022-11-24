import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseMode extends StatefulWidget {
  const ChooseMode({super.key});

  @override
  State<ChooseMode> createState() => _MyChooseMode();
}

class _MyChooseMode extends State<ChooseMode> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Image.asset(
            "assets/img/ChooseMode1.png",
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
                  color: const Color.fromRGBO(66, 200, 60, 1),
                  borderRadius: BorderRadius.circular(30)),
              child: const TextButton(
                onPressed: null,
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 139,
            left: 89,
            child: Container(
              width: 73,
              height: 73,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.01),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset('assets/img/VectorDark.png'),
            ),
          ),
          Positioned(
            bottom: 139,
            right: 89,
            child: Container(
              width: 73,
              height: 73,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.01),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset('assets/img/VectorLight.png'),
            ),
          ),
          const Positioned(
            bottom: 109,
            child: SizedBox(
              width: 380,
              height: 149,
              child: Text(
                'Choose Mode',
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
            child: SizedBox(
              child: SvgPicture.asset(
                'assets/img/StartSpotify.svg',
                height: 69,
                width: 196,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
