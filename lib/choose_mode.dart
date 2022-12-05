import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Trem.dart';

class ChooseMode extends StatefulWidget {
  const ChooseMode({super.key});

  @override
  State<ChooseMode> createState() => _MyChooseMode();
}

class _MyChooseMode extends State<ChooseMode> {
  Color _colors = const Color.fromRGBO(255, 255, 255, 1);

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    final arguments = ModalRoute.of(context)?.settings.arguments;

    return Container(
      color: _colors,
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
            child: GestureDetector(
              onTap: (() =>
                  Navigator.pushNamed(context, '/3', arguments: _colors)),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 95,
                  right: 95,
                  top: 16,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(66, 200, 60, 1),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    decoration: TextDecoration.none,
                    fontFamily: familySatosh,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 139,
            left: 89,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _colors == const Color.fromRGBO(255, 255, 255, 1)
                      ? _colors = const Color.fromRGBO(40, 40, 40, 1)
                      : null;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image.asset('assets/img/VectorDark.png').image,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromRGBO(255, 255, 255, 0.1),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 139,
            right: 89,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _colors == const Color.fromRGBO(40, 40, 40, 1)
                      ? _colors = const Color.fromRGBO(255, 255, 255, 1)
                      : null;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image.asset('assets/img/VectorLight.png').image,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromRGBO(255, 255, 255, 0.1),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 229,
            child: SizedBox(
              width: 380,
              height: 39,
              child: Text(
                'Choose Mode',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(218, 218, 218, 1),
                  decoration: TextDecoration.none,
                  fontSize: 25,
                  fontFamily: familySatosh,
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
