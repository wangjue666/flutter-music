import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

//设计图尺寸
const _width = 750;

class Screen {
  var screen;
  var width, height, top;
  Screen(BuildContext context) {
    screen = MediaQuery.of(context);
    print(screen);
    width = screen.size.width;
    height = screen.size.height;
    top = screen.padding.top;
  }

  double calc(double value) {
    return value * width / _width;
  }
}
