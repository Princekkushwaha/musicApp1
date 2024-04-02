// ignore_for_file: unused_import

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:music_app/home%20page.dart';
import 'package:music_app/next%20music.dart';
import 'package:music_app/second%20page.dart';
import 'package:music_app/stackpage.dart';

class nextmusic extends StatefulWidget {
  const nextmusic({super.key});

  @override
  State<nextmusic> createState() => _secondpageState();
}

class _secondpageState extends State<nextmusic> {
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xff5069B1),
          Color(0xff292A32),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const secondpage(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                      )),
                  const Column(
                    children: [
                      Text(
                        'Playing From Playlist',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      Text(
                        'Euphoria Soundtrack',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              Image.asset(
                'assets/images/download 2(2).png',
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Formula',
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0XffFFFFFF),
                      ),
                    ),
                    const Text(
                      'Labirinth',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xffffffff)),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite_outline,
                          color: Color(0xffffffff),
                        ),
                      ],
                    ),
                    Slider(
                      activeColor: const Color(0Xff5069B1),
                      inactiveColor: const Color(0xff999999),
                      min: 0.0,
                      max: 100.0,
                      value: progress,
                      onChanged: (value) {
                        setState(() {
                          progress = value;
                        });
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          Text(
                            '0:56',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 190),
                            child: Text(
                              '1:31',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.shuffle,
                    color: Color(0Xff5069B1),
                    size: 30,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  const Icon(
                    Icons.skip_previous_rounded,
                    color: Color(0XffFFFFFF),
                    size: 39,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  const CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Color(0Xff5069B1),
                    child: Icon(
                      Icons.play_arrow_sharp,
                      color: Color(0XffFFFFFF),
                      size: 45,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Mypage(),
                        ));
                      },
                      child: const Icon(
                        Icons.skip_next_rounded,
                        color: Color(0XffFFFFFF),
                        size: 40,
                      )),
                  const SizedBox(
                    width: 25,
                  ),
                  const Icon(
                    Icons.dark_mode,
                    color: Color(0XffFFFFFF),
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    Icon(
                      Icons.computer_outlined,
                      color: Color(0Xff5069B1),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'This Phone',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0Xff5069B1),
                      ),
                    ),
                    SizedBox(
                      width: 159,
                    ),
                    Icon(
                      Icons.share_outlined,
                      color: Color(0XffFFFFFF),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.view_list_sharp,
                          color: Color(0XffFFFFFF),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 250,
                width: 360,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0Xff5069B1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 19, top: 16),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lyrics',
                              style: TextStyle(
                                  color: Color(0XffFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Screws loose, tell’em \nScrews loose, tell’em',
                              style: TextStyle(
                                  color: Color(0XffFFFFFF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "I’m livin’ for the thrill,\nformula, tell’em",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0Xff454545),
                                  fontSize: 22),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
