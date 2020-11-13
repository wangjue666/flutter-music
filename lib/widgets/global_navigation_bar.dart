import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hello/util/screen_util.dart';

// class GlobalNavigationBar extends HookWidget{
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.play_arrow),
//           title: Text('发现'),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.play_arrow),
//           title: Text('发现'),
//         ),
//       ],
//     );
//   }
// }

const navigationItems = [
  {
    'img': 'assets/icon-music-acc-b.png',
    'activeImg': 'assets/icon-music-acc.png',
    'title': '发现',
  },
  {
    'img': 'assets/icon-video-b.png',
    'activeImg': 'assets/icon-video.png',
    'title': '视频',
  },
  {
    'img': 'assets/icon-music-b.png',
    'activeImg': 'assets/icon-music.png',
    'title': '我的',
  },
  {
    'img': 'assets/icon-group-b.png',
    'activeImg': 'assets/icon-group.png',
    'title': '云村',
  },
  {
    'img': 'assets/icon-person-b.png',
    'activeImg': 'assets/icon-person.png',
    'title': '账号',
  },
];

typedef NavigationBarCallback = void Function(int);

class GlobalNavigationBar extends HookWidget {
  final int value;

  GlobalNavigationBar({Key key, this.value = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = Screen(context);

    return Hero(
      tag: '_bottom_nav_bar__1__',
      child: DefaultTextStyle(
          style: TextStyle(inherit: false),
          child: Container(
            padding: EdgeInsets.only(top: screen.calc(10)),
            height: screen.calc(98),
            decoration: BoxDecoration(
              color: Color(0x66ffffff),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: navigationItems
                  .asMap()
                  .map((index, item) => MapEntry(
                      index,
                      NavigationBarItem(
                        img: item['img'],
                        activeImg: item['activeImg'],
                        title: item['title'],
                        active: value == index,
                        onTap: () {
                          switch (index) {
                            case 0:
                              Navigator.pushNamed(context, '/home');
                              break;
                            case 2:
                              Navigator.pushNamed(context, '/square');
                              break;
                          }
                        },
                      )))
                  .values
                  .toList(),
            ),
          )),
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  final String img;
  final String activeImg;
  final String title;
  final bool active;
  final VoidCallback onTap;

  NavigationBarItem({
    Key key,
    this.img,
    this.activeImg,
    this.title,
    this.active = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = Screen(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Container(
              width: screen.calc(56),
              height: screen.calc(56),
              decoration: BoxDecoration(
                gradient: active
                    ? LinearGradient(
                        colors: [
                          Color(0xffff584a),
                          Color(0xffff1f14),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      )
                    : null,
                // image: DecorationImage(
                //   image: AssetImage('assets/icon-music-acc.png'),
                // ),
                borderRadius: BorderRadius.circular(screen.calc(28)),
              ),
              child: Center(
                  child: Image.asset(active ? activeImg : img,
                      width: screen.calc(30), height: screen.calc(30))),
            ),
            Text(title,
                style: TextStyle(
                  fontSize: screen.calc(17),
                  color: active ? Color(0xffff1f14) : Color(0xff969696),
                )),
          ],
        ),
      ),
    );
  }
}
