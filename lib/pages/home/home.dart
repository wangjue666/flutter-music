import 'package:flutter/material.dart';
import "package:hello/util/screen_util.dart";
import "package:hello/pages/home/header.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = Screen(context);
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(top: (screen.top + screen.calc(7))),
            child: Column(
              children: [
                Header(),
              ],
            )));
  }
}
