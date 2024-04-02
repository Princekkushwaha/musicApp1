import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
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

  bool play = true;
   
  @override
  void initState() {
    // TODO: implement initState
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
                        'Discover Weekly',
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
                'assets/images/download 1.png',
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
                      'Watercolor Eyes - From Euphoria',
                      style: TextStyle(
                        fontSize: 19,
                        color: Color(0XffFFFFFF),
                      ),
                    ),
                    const Text(
                      'Lana Del Rey',
                      style: TextStyle(fontSize: 15, color: Color(0xffffffff)),
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
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.shuffle,
                    color: Color(0XffFFFFFF),
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
                  CircleAvatar(
                      maxRadius: 30,
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
                  const SizedBox(
                    width: 25,
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
                  const SizedBox(
                    width: 25,
                  ),
                  const Icon(
                    Icons.dark_mode,
                    color: Color(0XffBf6336),
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
                      color: Color(0XffBf6336),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'This Phone',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0XffBf6336),
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
                    color: const Color(0XffBf6336),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 19, top: 16),
                    child: Column(
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
                          'Young love don’t always last \nforever',
                          style: TextStyle(
                              color: Color(0XffFFFFFF),
                              fontWeight: FontWeight.w600,
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          "Wild horses can’t keep us \ntogether \nSo what if you taste just like \nheaven?",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0Xff454545),
                              fontSize: 22),
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
