// ignore_for_file: unused_import

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  bool isfavourite = true;
  ScrollController scrollController = ScrollController();
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
        controller: scrollController,
        physics: const NeverScrollableScrollPhysics(),
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
                  Column(
                    children: [
                      Text(
                        'Playing From Playlist',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      Text(
                        'Euphoria Soundtrack',
                        style: TextStyle(
                            fontSize: 18.sp,
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
              SizedBox(
                height: 7.h,
              ),
              Image.asset(
                'assets/images/download 2(2).png',
                height: 330,
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Formula',
                      style: TextStyle(
                        fontSize: 22.sp,
                        color: const Color(0XffFFFFFF),
                      ),
                    ),
                    Text(
                      'Labirinth',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                          color: const Color(0xffffffff)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isfavourite = !isfavourite;
                            });
                          },
                          icon: Icon(Icons.favorite,
                              color: isfavourite == true
                                  ? const Color(0xffffffff)
                                  : Colors.red),
                        )
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
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.shuffle,
                    color: Color(0Xff5069B1),
                    size: 30,
                  ),
                  SizedBox(
                    width: 24.w,
                  ),
                  const Icon(
                    Icons.skip_previous_rounded,
                    color: Color(0XffFFFFFF),
                    size: 39,
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  CircleAvatar(
                    maxRadius: 30.sp,
                    backgroundColor: const Color(0Xff5069B1),
                    child: const Icon(
                      Icons.play_arrow_sharp,
                      color: Color(0XffFFFFFF),
                      size: 45,
                    ),
                  ),
                  SizedBox(
                    width: 25.w,
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
                  SizedBox(
                    width: 25.w,
                  ),
                  const Icon(
                    Icons.dark_mode,
                    color: Color(0XffFFFFFF),
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    const Icon(
                      Icons.computer_outlined,
                      color: Color(0Xff5069B1),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      'This Phone',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0Xff5069B1),
                      ),
                    ),
                    SizedBox(
                      width: 159.w,
                    ),
                    const Icon(
                      Icons.share_outlined,
                      color: Color(0XffFFFFFF),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    const Column(
                      children: [
                        Icon(
                          Icons.view_list_sharp,
                          color: Color(0XffFFFFFF),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  if (scrollController.position.pixels == 0) {
                    scrollController.animateTo(
                      scrollController.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  } else {
                    scrollController.animateTo(
                      0,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
                icon: const Icon(
                  (Icons.keyboard_arrow_up_rounded),
                  color: Color(0XffFFFFFF),
                  size: 25,
                ),
              ),
              const Text(
                "Lyrics",
                style: TextStyle(
                  color: Color(0XffFFFFFF),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                height: 250.h,
                width: 360.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0Xff5069B1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, top: 16),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lyrics',
                              style: TextStyle(
                                  color: const Color(0XffFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              'Screws loose, tell’em \nScrews loose, tell’em',
                              style: TextStyle(
                                  color: const Color(0XffFFFFFF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.sp),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "I’m livin’ for the thrill,\nformula, tell’em",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0Xff454545),
                                  fontSize: 22.sp),
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
