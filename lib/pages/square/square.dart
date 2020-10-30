import 'package:flutter/material.dart';
import 'package:hello/util/screen_util.dart';

class SquarePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments as Map;
    var screen = Screen(context);

    print(args);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: screen.top + screen.calc(7)),
        child: Column(
          children: [Text('广场')],
        ),
      ),
    );
  }
}
