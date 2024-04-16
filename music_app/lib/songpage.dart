import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/appcolors.dart';
import 'package:music_app/assets.dart';
import 'package:music_app/main.dart';
import 'package:music_app/test_api.dart';

class songPage extends StatelessWidget {
  songPage({super.key});

  List sort = ["Playlist", "Artists", "Albums", "Backstabber", "Good Vibes"];

  List name = [
    "Good Vibes",
    "Lana Del Rey",
    "Winter Songs",
    "Moody Mix",
    "Doin’ Time",
    "Backstabber",
  ];

  List singer2 = [
    "Playlist",
    "Artist",
    "Playlist • Joe",
    "Playlist",
    "Song • Kesha",
    "Playlist",
  ];

  List image = [
    Assets.music1,
    Assets.music2,
    Assets.music3,
    Assets.music4,
    Assets.music5,
    Assets.music6,
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
        backgroundColor: const Color(0xff3F4258),
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
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff3F4258),
              Color(0xff2D3155),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your library',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 36.sp,
                      color: const Color(0XffFFFFFF),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.search,
                        size: 40,
                        color: Color(0XffFFFFFF),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyWidget()));
                        },
                        child: const Icon(
                          Icons.add,
                          size: 40,
                          color: Color(0XffFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 130.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 3),
                          // color: Colors.,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        sort[index],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 5),
                  child: Row(
                    children: [
                      Icon(
                        (Icons.menu_open_rounded),
                        color: Colors.white,
                      ),
                      Text(
                        "Recently played",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    (Icons.menu),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
                child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 2),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: AppColors.bgColor1.withOpacity(0.19)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          image[index],
                          height: 120.h,
                        ),
                        Text(name[index],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                        Text(singer2[index],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
