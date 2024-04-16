import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:music_app/appcolors.dart';
import 'package:music_app/assets.dart';
import 'package:music_app/next%20music.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var _currentIndex;

  var ImageFilter;

  static route() => MaterialPageRoute(
        builder: (context) => HomePage(),
        fullscreenDialog: true,
      );
  HomePage({super.key});

  List music = [
    "Pop",
    "Jazz",
    "Indie",
    "Aesthetic",
    "Sufi",
    "All Out 80s",
    "Aesthetic",
    "Viral",
    "Formula",
    "pink",
    "Love Me More",
    "Watercolor Eyes - From \n“Euphoria” An..."
        "",
    "19 days ago",
    "10 days ago",
  ];

  List singer = [
    "Mitstki • Single",
    "Lana Del Rey • Single",
  ];

  List icon = [
    const Icon(Icons.home),
    const Icon(Icons.search_off),
    const Icon(Icons.queue_music),
  ];

  List pic = [
    Assets.pop,
    Assets.jazz,
    Assets.indie,
    Assets.aesthetic,
    Assets.sufi,
    Assets.allOut80s,
    Assets.aesthetic1,
    Assets.viral,
    Assets.formula,
    Assets.pink,
    Assets.loveMeMore,
    Assets.watercolorEyes,
  ];
  List image = [
    Assets.loveMeMore1,
    Assets.loveMeMore1,
  ];
  List color = [
    AppColors.bgColor,
    AppColors.red,
    AppColors.orange,
    AppColors.beige,
    AppColors.ink,
    AppColors.beige1,
    AppColors.black,
    AppColors.beige2,
    AppColors.aquamarine,
    AppColors.black1.withOpacity(0.7),
    AppColors.black2.withOpacity(0.7)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notifications_none_sharp,
              size: 36,
              color: Color(0XffFFFFFF),
            ),
          ),
          Image.asset(
            'assets/images/cat 1.png',
            height: 53.h,
            width: 53.w,
          ),
          const SizedBox(
            width: 10,
          )
        ],
        leadingWidth: 40.w,
        elevation: 0,
        backgroundColor: const Color(0xff8D7DEF),
        leading: Padding(
          padding: const EdgeInsets.only(left: 19),
          child: SvgPicture.asset(
            'assets/images/Group 82.svg',
            height: 10.h,
            color: const Color.fromARGB(255, 241, 238, 238),
          ),
        ),
      ),
      body: Container(
        // height: double.infinity,
        // width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff8D7DEF),
              Color(0xff695CFF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: Text(
                    "Hello Maciek 👋",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: const Color(0XffFFFFFF),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: Text(
                    'What’s your mood today?',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: const Color(0XffFFFFFF),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: Text(
                    "Genres",
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: const Color(0XffFFFFFF),
                    ),
                  ),
                ),
                SizedBox(
                  height: 150.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 0.4,
                                      spreadRadius: 0.2,
                                      offset: Offset(0, 1))
                                ],
                                borderRadius: BorderRadius.circular(31),
                                color: color[index]),
                            child: Column(
                              children: [
                                Text(
                                  music[index],
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0XffFFFFFF),
                                  ),
                                ),
                                Image.asset(
                                  pic[index],
                                  height: 76.h,
                                )
                              ],
                            )),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Text(
                    "You may like it",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0XffFFFFFF),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 150.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 0.4,
                                      spreadRadius: 0.2,
                                      offset: Offset(0, 1))
                                ],
                                borderRadius: BorderRadius.circular(31),
                                color: color[index + 4]),
                            child: Column(
                              children: [
                                Text(
                                  music[index + 5],
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0XffFFFFFF),
                                  ),
                                ),
                                Image.asset(
                                  pic[index + 5],
                                  height: 76.h,
                                )
                              ],
                            )),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 19),
                  child: Text(
                    "Music premieres",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                      color: const Color(0XffFFFFFF),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 140.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 0.4,
                                      spreadRadius: 0.2,
                                      offset: Offset(0, 1))
                                ],
                                borderRadius: BorderRadius.circular(31),
                                color: color[index + 9]),
                            child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 19,
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          pic[index + 10],
                                          height: 90.h,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            coustoText(text: music[index + 10]),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  image[index],
                                                  height: 22.h,
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      coustoText(
                                                          text: singer[index]),
                                                    ]),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 22.h,
                                            ),
                                            coustoText(text: music[index + 12])
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 30),
                                          child: CircleAvatar(
                                            backgroundColor: Color(0Xff776BFF),
                                            child: Icon(
                                              Icons.play_arrow,
                                              color: Color(0XffFFFFFF),
                                            ),
                                          ),
                                        )
                                      ]),
                                ))),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 90.h,
                ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     IconButton(
                //         onPressed: () {
                //           Navigator.of(context).push(
                //             MaterialPageRoute(
                //               builder: (context) => Nextpage(),
                //             ),
                //           );
                //         },
                //         icon: const Icon(
                //           Icons.navigate_next_sharp,
                //           color: Colors.white,
                //         )),
                //   ],
                // ),

                // ....
              ],
            ),
          ),
          // Positioned(
          //   bottom: 20,
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(
          //       horizontal: 40,
          //     ),
          //     child: Container(
          //       height: 70,
          //       width: 280,
          //       decoration: const BoxDecoration(
          //           borderRadius: BorderRadius.all(Radius.circular(16)),
          //           color: Colors.white38),
          //       child: const Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Icon(
          //             Icons.home,
          //             color: Colors.white,
          //             size: 46,
          //           ),
          //           Icon(
          //             Icons.search,
          //             color: Colors.white,
          //             size: 40,
          //           ),
          //           Icon(
          //             Icons.library_music,
          //             size: 46,
          //             color: Colors.white,
          //           ),
          //         ],
          //       ),
          //     ),

          //   ),
          // )
        ]),
      ),
    );
  }

  Text coustoText({required String text}) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0XffFFFFFF),
      ),
    );
  }
}
