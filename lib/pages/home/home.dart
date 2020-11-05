import 'package:flutter/material.dart';
import "package:hello/util/screen_util.dart";
import "package:hello/pages/home/header.dart";
import 'package:hello/pages/home/banner.dart';
import 'package:hello/pages/home/category.dart';
import 'package:hello/widgets/song_list.dart';
import 'package:hello/widgets/recommand_list.dart';

const recommendList1 = [
  {
    'id': '1111',
    'img': 'assets/tmp_cover_1.jpg',
    'title': 'Tempest',
    'artist': 'Capo Productions',
    'tip': '你到不了的地方 音乐能带你去'
  },
  {
    'id': '1111',
    'img': 'assets/tmp_cover_2.jpg',
    'title': '岁月神偷',
    'artist': '金玟岐',
    'tip': 'aaa'
  },
  {
    'id': '1111',
    'img': 'assets/tmp_cover_3.jpg',
    'title': '最美的期待',
    'artist': '周笔畅',
    'tip': 'bbb'
  },
  {
    'id': '1111',
    'img': 'assets/tmp_cover_4.jpg',
    'title': '遥远的你',
    'artist': 'xxxx',
    'tip': 'xxx'
  },
  {
    'id': '1111',
    'img': 'assets/tmp_cover_5.jpg',
    'title': '遥远的你',
    'artist': 'xxxx',
    'tip': 'xxx'
  },
  {
    'id': '1111',
    'img': 'assets/tmp_cover_6.jpg',
    'title': '遥远的你',
    'artist': 'xxxx',
    'tip': 'xxx'
  },
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = Screen(context);
    return Scaffold(
        body: DefaultTextStyle(
      style: TextStyle(color: Color(0xff333333)),
      child: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.only(top: (screen.top + screen.calc(7))),
            child: Column(
              children: [
                Header(),
                MyBanner(),
                Category(),
                SongList(
                    title: '你的歌单精选站',
                    onMore: () {
                      Navigator.pushNamed(context, '/square');
                    },
                    items: [
                      {
                        'id': '43423',
                        'img': 'assets/tmp_cover_1.jpg',
                        'count': '9亿',
                        'title': '[华语新歌] 最新华语音乐专辑|最快最多最好最什么'
                      },
                      {
                        'id': '666',
                        'img': 'assets/tmp_cover_2.jpg',
                        'count': '39.4亿',
                        'title': '今天从《Titan》听起|私人雷达'
                      },
                      {
                        'id': '231',
                        'img': 'assets/tmp_cover_3.jpg',
                        'count': '16亿',
                        'title': 'aaa'
                      },
                      {
                        'id': '333',
                        'img': 'assets/tmp_cover_4.jpg',
                        'count': '5321',
                        'title': 'bbb'
                      },
                      {
                        'id': '788',
                        'img': 'assets/tmp_cover_5.jpg',
                        'count': '19万',
                        'title': 'ccc'
                      },
                      {
                        'id': '344',
                        'img': 'assets/tmp_cover_6.jpg',
                        'count': '565',
                        'title': 'dddd'
                      },
                    ]),
                RecommendList(
                  title: '根据 Red Dawn (a) 推荐',
                  items: recommendList1,
                  onMore: () {
                    print('more');
                  },
                  onPlay: (id) {
                    print('play: $id');
                  },
                ),
              ],
            )),
      ),
    ));
  }
}
