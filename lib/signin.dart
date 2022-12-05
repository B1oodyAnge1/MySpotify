import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Trem.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _MySignIn();
}

class _MySignIn extends State<SignIn> {
  @override
  bool _showPassword = false;
  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    final colors = ModalRoute.of(context)?.settings.arguments;
    final Color colorText;
    colors == const Color.fromRGBO(40, 40, 40, 1)
        ? colorText = whiteColor
        : colorText = blackColor;

    return Scaffold(
      body: Container(
        width: myWidth,
        height: myHeight,
        color: colors as Color,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Positioned(
              top: 375,
              child: GestureDetector(
                onTap: null,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 26,
                    bottom: 26,
                    left: 135,
                    right: 135,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromRGBO(66, 200, 60, 1),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      decoration: TextDecoration.none,
                      fontFamily: familySatosh,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 349,
              left: 35,
              child: SizedBox(
                width: 180,
                height: 149,
                child: Text(
                  'Recovery Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colorText,
                    decoration: TextDecoration.none,
                    fontSize: 17,
                    fontFamily: familySatosh,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 119,
              child: SizedBox(
                width: 380,
                height: 49,
                child: Text(
                  'Sigin in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colorText,
                    decoration: TextDecoration.none,
                    fontSize: 30,
                    fontFamily: familySatosh,
                  ),
                ),
              ),
            ),
            Positioned(
                top: 149,
                child: Row(
                  children: [
                    Text(
                      'If you need any support',
                      style: TextStyle(
                        color: colorText,
                        fontFamily: familySatosh,
                      ),
                    ),
                    const TextButton(
                      onPressed: null,
                      child: Text(
                        'click here',
                        style: TextStyle(
                          color: Color.fromRGBO(56, 180, 50, 1),
                          fontFamily: familySatosh,
                        ),
                      ),
                    )
                  ],
                )),
            Positioned(
              top: 20,
              child: SizedBox(
                child: SvgPicture.asset(
                  'assets/img/StartSpotify.svg',
                  height: 70,
                  width: 158,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 200,
              child: SizedBox(
                width: 333,
                height: 80,
                child: TextField(
                  style: TextStyle(color: colorText, fontFamily: familySatosh),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: 'Enter Username Or Email',
                    hintStyle: TextStyle(
                      color: colorText,
                      fontFamily: familySatosh,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 270,
              child: SizedBox(
                width: 333,
                height: 80,
                child: TextField(
                  style: TextStyle(color: colorText, fontFamily: familySatosh),
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: colorText,
                      fontFamily: familySatosh,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _togglevisibility();
                      },
                      child: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                        color: colorText,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 490,
              child: Row(
                children: [
                  SizedBox(
                    width: 146,
                    height: 1,
                    child: Divider(
                      color: colorText,
                    ),
                  ),
                  Text(
                    '    or   ',
                    style: TextStyle(
                      fontFamily: familySatosh,
                      color: colorText,
                    ),
                  ),
                  SizedBox(
                    width: 146,
                    height: 1,
                    child: Divider(
                      color: colorText,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 140,
              top: 540,
              child: Row(
                children: [
                  Image.asset(
                    "assets/img/Group26.png",
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 58,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Image.asset(
                      "assets/img/Vector.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 600,
                child: Row(
                  children: [
                    Text(
                      'Not A Member ?',
                      style: TextStyle(
                        color: colorText,
                        fontFamily: familySatosh,
                      ),
                    ),
                    const TextButton(
                      onPressed: null,
                      child: Text(
                        'Register Now',
                        style: TextStyle(
                          color: Color.fromRGBO(40, 140, 233, 1),
                          fontFamily: familySatosh,
                        ),
                      ),
                    )
                  ],
                )),
            Positioned(
              top: 45,
              left: 20,
              child: GestureDetector(
                onTap: (() =>
                    Navigator.pushNamed(context, '/3', arguments: colors)),
                child: const Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
