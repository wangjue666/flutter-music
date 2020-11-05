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
      margin: EdgeInsets.only(top: screen.calc(70)),
      child: Column(
        children: [
          _Header(title: title,onMore: onMore,),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.only(top: screen.calc(4)),
                child: Row(
                  children: [
                    Column(children: [
                      Container(
                        padding: EdgeInsets.only(top: screen.calc(20)),
                        child: Row(
                          children: [],
                        ),
                      )
                    ]),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}


class _Header extends StatelessWidget{
  final String title;
   final VoidCallback onMore;
  _Header({Key key, this.title, this.onMore}):super(key: key);
  @override
  Widget build(BuildContext context) {
    final screen = Screen(context);
   
   
    return Container(
              padding: EdgeInsets.only(
                  left: screen.calc(32), right: screen.calc(32)),
              height: screen.calc(52),
              child: Row(
                children: [
                  Center(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: screen.calc(34),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: onMore,
                    child: Container(
                        padding: EdgeInsets.only(
                            left: screen.calc(24), right: screen.calc(24)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            border: Border.all(
                                color: Color(0xffe7e7e7),
                                width: screen.calc(2))),
                        child: Row(
                          children: [Icon(Icons.play_arrow), Text('播放全部')],
                        )),
                  )
                ],
              ))
  }
  
}