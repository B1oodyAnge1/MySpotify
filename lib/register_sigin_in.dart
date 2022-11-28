import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegSig extends StatefulWidget {
  const RegSig({super.key});

  @override
  State<RegSig> createState() => _MyRegSig();
}

class _MyRegSig extends State<RegSig> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    final colors = ModalRoute.of(context)?.settings.arguments;

    return Container(
      color: colors as Color,
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
            child: ElevatedButton(
              onPressed: () {},
              child: Image.asset('assets/img/VectorDark.png'),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(CircleBorder()),
                padding: MaterialStateProperty.all(EdgeInsets.all(22)),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(255, 255, 255, 0.01)),
              ),
            ),
          ),
          Positioned(
            bottom: 139,
            right: 89,
            child: ElevatedButton(
              onPressed: () {
                print('button press');
              },
              child: Image.asset('assets/img/VectorLight.png'),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(CircleBorder()),
                padding: MaterialStateProperty.all(EdgeInsets.all(22)),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(255, 255, 255, 0.01)),
              ),
            ),
          ),
          const Positioned(
            bottom: 109,
            child: SizedBox(
              width: 380,
              height: 149,
              child: Text(
                'AAAAAAAAAAAAAAAAAAAAAAAAA',
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
