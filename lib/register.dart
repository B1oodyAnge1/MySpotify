import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Trem.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _MyRegister();
}

class _MyRegister extends State<Register> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    final colors = ModalRoute.of(context)?.settings.arguments;
    final Color colorText;
    colors == const Color.fromRGBO(40, 40, 40, 1)
        ? colorText = Colors.white
        : colorText = const Color.fromRGBO(56, 56, 56, 1);
    return Scaffold(
      body: Container(
        width: myWidth,
        height: myHeight,
        color: colors as Color,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Positioned(
              top: 425,
              child: GestureDetector(
                onTap: null,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 26,
                    bottom: 26,
                    left: 90,
                    right: 90,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromRGBO(66, 200, 60, 1),
                  ),
                  child: const Text(
                    'Create Account',
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
              top: 119,
              child: SizedBox(
                width: 380,
                height: 49,
                child: Text(
                  'Register',
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
                  style: TextStyle(
                    color: colorText,
                    fontFamily: familySatosh,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: 'Full Name',
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
                  style: TextStyle(
                    color: colorText,
                    fontFamily: familySatosh,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: 'Enter Email',
                    hintStyle: TextStyle(
                      color: colorText,
                      fontFamily: familySatosh,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 340,
              child: SizedBox(
                width: 333,
                height: 80,
                child: TextField(
                  style: TextStyle(
                    color: colorText,
                    fontFamily: familySatosh,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: colorText,
                      fontFamily: familySatosh,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 530,
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
                      color: colorText,
                      fontFamily: familySatosh,
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
              left: 137,
              top: 570,
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
                top: 620,
                child: Row(
                  children: [
                    Text(
                      'Do you have an account?',
                      style: TextStyle(
                        fontFamily: familySatosh,
                        color: colorText,
                      ),
                    ),
                    const TextButton(
                      onPressed: null,
                      child: Text(
                        'sign In',
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
