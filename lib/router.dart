import 'package:flutter/material.dart';
import 'package:hello/pages/splash/splash.dart';
import 'package:hello/pages/home/home.dart';
import 'package:hello/pages/square/square.dart';

final routes = {
  "/": (BuildContext context) => SplashPage(),
  "/home": (BuildContext context) => HomePage(),
  "/square": (BuildContext context) => SquarePage(),
};
