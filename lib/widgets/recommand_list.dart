import 'package:flutter/material.dart';
import 'package:hello/util/screen_util.dart';

class RecommendList extends StatelessWidget {
  final String title;
  final VoidCallback onMore;
  final List<Map> items;

  RecommendList({Key key, this.title, this.onMore, this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = Screen(context);

    return Center(
      child: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(color: Colors.red),
          width: 100,
          height: 500,
          child: Text("aaaaaaa")),
    );
  }
}
