import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/Trem.dart';

class RegSig extends StatefulWidget {
  const RegSig({super.key});

  @override
  State<RegSig> createState() => _MyRegSig();
}

class _MyRegSig extends State<RegSig> {
  @override
  Widget build(BuildContext context) {
    final colors = ModalRoute.of(context)?.settings.arguments;
    final Color colorText;
    colors == const Color.fromRGBO(40, 40, 40, 1)
        ? colorText = Colors.white
        : colorText = const Color.fromRGBO(56, 56, 56, 1);
    return Container(
      color: colors as Color,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            left: 0,
            child: Image.asset(
              "assets/img/regSin.png",
              height: 353,
              width: 252,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 225,
            left: 28,
            child: GestureDetector(
              onTap: (() =>
                  Navigator.pushNamed(context, '/5', arguments: colors)),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 45,
                  right: 45,
                  top: 16,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(66, 200, 60, 1),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: colorText,
                    fontSize: 21,
                    decoration: TextDecoration.none,
                    fontFamily: familySatosh,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 225,
            right: 28,
            child: GestureDetector(
              onTap: (() =>
                  Navigator.pushNamed(context, '/4', arguments: colors)),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 45,
                  right: 45,
                  top: 16,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(66, 200, 60, 1),
                ),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    color: colorText,
                    fontSize: 21,
                    decoration: TextDecoration.none,
                    fontFamily: familySatosh,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 269,
            child: SizedBox(
              width: 380,
              height: 149,
              child: Text(
                'Enjoy listening to music',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: colorText,
                  decoration: TextDecoration.none,
                  fontSize: 27,
                  fontFamily: familySatosh,
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 319,
            child: SizedBox(
              width: 380,
              height: 49,
              child: Text(
                'Spotify is a proprietary Swedish audio streaming and media services provider ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(121, 121, 121, 1),
                  decoration: TextDecoration.none,
                  fontSize: 19,
                  fontFamily: familySatosh,
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 97,
            right: 97,
            child: SizedBox(
              child: SvgPicture.asset(
                'assets/img/StartSpotify.svg',
                height: 71,
                width: 235,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: 20,
            child: GestureDetector(
              onTap: (() =>
                  Navigator.pushNamed(context, '/2', arguments: colors)),
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
        ],
      ),
    );
  }
}
