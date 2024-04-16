import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/appcolors.dart';
import 'package:music_app/assets.dart';

class searchPage extends StatelessWidget {
  searchPage({super.key});
  List music = [
    "Olivia Rodrigo",
    "Doin’ Time",
    "Euphoria Soundtrack",
    "Backstabber",
    "Good Vibes"
  ];

  List singer = [
    "Artist ",
    "Song • Lana Del Rey",
    "Playlist",
    "Song • Kesha",
    "Playlist • Joe",
  ];

  List pic = [
    Assets.pop1,
    Assets.pop2,
    Assets.pop3,
    Assets.pop4,
    Assets.pop5,
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
            SizedBox(
              width: 10.w,
            )
          ],
          leadingWidth: 40.w,
          elevation: 0,
          backgroundColor: const Color(0xff292A32),
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
            //     height: double.infinity,
            //     width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff292A32),
                  Color(0xff3E4268),
                ],
                stops: [
                  0.2,
                  0.5,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: SingleChildScrollView(
              // physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Text(
                      'Find the best music for\nyour playlist',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp,
                        color: const Color(0XffFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            )),

                            hintText: 'Search for music...',

                            suffixIcon: Icon(
                              Icons.search,
                              size: 38,
                              color: const Color(0XffFFFFFF).withOpacity(0.4),
                            ),
                            // prefixIcon: Icon(Icons.search),
                            hintStyle: TextStyle(
                              fontSize: 17.sp,
                              color: const Color(0XffFFFFFF).withOpacity(0.4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Recent searches",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w300,
                          color: const Color(0XffFFFFFF)),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 600.h,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 80.h,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        blurRadius: 0.4,
                                        spreadRadius: 0.2,
                                        offset: Offset(0, 1))
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          pic[index],
                                          height: 90.h,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          // crossAxisAlignment:
                                          //     CrossAxisAlignment.center,
                                          children: [
                                            coustoText(text: music[index]),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            coustoText(text: singer[index]),
                                            // const SizedBox(
                                            //   width: 10,
                                            // ),
                                            // const SizedBox(
                                            //   height: 22,
                                            // ),
                                          ],
                                        ),
                                      ]),
                                  Icon(
                                    Icons.clear,
                                    color: const Color(0XffFFFFFF)
                                        .withOpacity(0.4),
                                  )
                                ],
                              )),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )));
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
