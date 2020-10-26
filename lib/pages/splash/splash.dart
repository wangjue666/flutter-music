import 'dart:async';

import 'package:flutter/material.dart';
import "package:hello/util/screen_util.dart";

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = Screen(context);
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
    return Container(
      decoration: BoxDecoration(color: Color(0xffc93e2d)),
      child: Stack(
        children: [
          Positioned(
              top: screen.calc(426),
              left: screen.calc(150),
              child: Image.asset('assets/splash_logo.png',
                  width: screen.calc(450), height: screen.calc(89))),
          Positioned(
              bottom: screen.calc(41),
              left: screen.calc(264),
              child: Image.asset('assets/splash_logo_sm.png',
                  width: screen.calc(222), height: screen.calc(51)))
        ],
      ),
    );
  }
}
