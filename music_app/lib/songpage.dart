import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class songPage extends StatelessWidget {
  const songPage({super.key});

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
        backgroundColor: const Color(0xff3F4258),
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
        child: const Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: Text(
                    'Your library',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 36,
                      color: Color(0XffFFFFFF),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 610, left: 35),
              child: Icon(
                Icons.search,
                size: 36,
                color: Color(0XffFFFFFF),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 610, left: 25),
              child: Icon(
                Icons.add,
                size: 36,
                color: Color(0XffFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
