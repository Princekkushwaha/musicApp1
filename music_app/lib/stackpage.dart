import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:music_app/home%20page.dart';
import 'package:music_app/searchpage.dart';

import 'package:music_app/second%20page.dart';
import 'package:music_app/songpage.dart';

class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

int currentPage = 0;

List<Widget> musicPage = <Widget>[
  HomePage(),
  searchPage(),
  const songPage(),
];

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          musicPage[currentPage],
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: Container(
              height: 70,
              width: 280,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white38),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        currentPage = 0;
                        setState(() {});
                      },
                      icon: currentPage == 0
                          ? const Icon(
                              Icons.home,
                              color: Color(0Xff776BFF),
                              size: 45,
                            )
                          : const Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 30,
                            )),
                  IconButton(
                      onPressed: () {
                        currentPage = 1;
                        setState(() {});
                      },
                      icon: currentPage == 1
                          ? const Icon(
                              Icons.search,
                              color: Color(0Xff776BFF),
                              size: 45,
                            )
                          : const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 30,
                            )),
                  IconButton(
                      onPressed: () {
                        currentPage = 2;
                        setState(() {});
                      },
                      icon: currentPage == 2
                          ? const Icon(
                              Icons.library_music_rounded,
                              color: Color(0Xff776BFF),
                              size: 45,
                            )
                          : const Icon(
                              Icons.library_music,
                              color: Colors.white,
                              size: 30,
                            )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
