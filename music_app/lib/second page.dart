import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/login%20page.dart';
import 'package:music_app/next%20music.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

final assetsAudioPlayer = AssetsAudioPlayer();

class _secondpageState extends State<secondpage> {
  double progress = 0;
  ScrollController scrollController = ScrollController();

  bool play = true;

  @override
  void initState() {
    assetsAudioPlayer.open(Audio("assets/audio/Albela-Tangewala.mp3"),
        autoStart: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xffBF6336),
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
                            builder: (context) => const loginpage(),
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
                        'Discover Weekly',
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
                height: 22.h,
              ),
              Image.asset(
                'assets/images/download 1.png',
                height: 330,
              ),
              SizedBox(
                height: 6.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Watercolor Eyes - From Euphoria',
                      style: TextStyle(
                        fontSize: 19.sp,
                        color: const Color(0XffFFFFFF),
                      ),
                    ),
                    Text(
                      'Lana Del Rey',
                      style: TextStyle(
                          fontSize: 15.sp, color: const Color(0xffffffff)),
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
                      activeColor: const Color.fromARGB(255, 245, 132, 92),
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
                            '0:32',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 190),
                            child: Text(
                              '3:31',
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
                    color: Color(0XffFFFFFF),
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
                      backgroundColor: const Color(0XffBf6336),
                      child: IconButton(
                          splashColor: const Color(0XffBf6336),
                          style: const ButtonStyle(),
                          onPressed: () async {
                            if (play) {
                              assetsAudioPlayer.pause();
                              setState(() {
                                play = false;
                              });
                            } else {
                              assetsAudioPlayer.play();
                              setState(() {
                                play = true;
                              });
                            }
                          },
                          icon: Icon(
                            play ? Icons.pause : Icons.play_arrow,
                            color: const Color(0XffFFFFFF),
                          ))),
                  SizedBox(
                    width: 25.w,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const nextmusic(),
                          ),
                        );
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
                    color: Color(0XffBf6336),
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    const Icon(
                      Icons.computer_outlined,
                      color: Color(0XffBf6336),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      'This Phone',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0XffBf6336),
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
                    )
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
                    color: const Color(0XffBf6336),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, top: 16),
                    child: Column(
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
                          'Young love don’t always last \nforever',
                          style: TextStyle(
                              color: const Color(0XffFFFFFF),
                              fontWeight: FontWeight.w600,
                              fontSize: 22.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "Wild horses can’t keep us \ntogether \nSo what if you taste just like \nheaven?",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: const Color(0Xff454545),
                              fontSize: 22.sp),
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
