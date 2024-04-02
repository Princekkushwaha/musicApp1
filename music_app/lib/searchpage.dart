import 'package:flutter/material.dart';
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
              height: 53,
              width: 53,
            ),
            const SizedBox(
              width: 10,
            )
          ],
          leadingWidth: 40,
          elevation: 0,
          backgroundColor: const Color(0xff292A32),
          leading: Padding(
            padding: const EdgeInsets.only(left: 19),
            child: SvgPicture.asset(
              'assets/images/Group 82.svg',
              height: 10,
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
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 27),
                    child: Text(
                      'Find the best music for\nyour playlist',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(0XffFFFFFF),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                              fontSize: 17,
                              color: const Color(0XffFFFFFF).withOpacity(0.4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      "Recent searches",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0XffFFFFFF)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              // width: 35,
                              height: 80,
                              // alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        blurRadius: 0.4,
                                        spreadRadius: 0.2,
                                        offset: Offset(0, 1))
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey),
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 6),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 9,
                                      right: 20,
                                    ),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            pic[index],
                                            height: 90,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              coustoText(text: music[index]),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        coustoText(
                                                            text:
                                                                singer[index]),
                                                      ]),
                                                  const Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 22,
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 7, left: 30),
                                            child: Icon(
                                              Icons.clear,
                                              color: const Color(0XffFFFFFF)
                                                  .withOpacity(0.4),
                                            ),
                                          )
                                        ]),
                                  ))),
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
