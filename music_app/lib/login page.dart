// ignore: file_names
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_app/second%20page.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  void initState() {
    super.initState();
    log('Device height = ${Get.height} and Device width = ${Get.width}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/1445.jpg',
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0Xff3451FF),
                        child: Icon(
                          Icons.token_sharp,
                          color: Color(0XffFFFFFF),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Listen to some',
                        style: TextStyle(
                          color: const Color(0XffFFFFFF),
                          fontSize: 32.sp,
                        ),
                      ),
                      Text(
                        'Drillin',
                        style: TextStyle(
                          color: const Color(0XffFFFFFF),
                          fontSize: 32.sp,
                        ),
                      ),
                      Text(
                        'Beats',
                        style: TextStyle(
                          color: const Color(0XffFFFFFF),
                          fontSize: 32.sp,
                        ),
                      ),
                      SizedBox(
                        height: 162.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 327.w,
                          height: 55.h,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 119, 118, 118),
                              borderRadius: BorderRadius.circular(16)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Email Address ",
                                  labelStyle: TextStyle(
                                      color: Color(0XffC9CCC9), fontSize: 16)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 327.w,
                          height: 55.h,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 119, 118, 118),
                              borderRadius: BorderRadius.circular(16)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Password ",
                                  labelStyle: TextStyle(
                                      color: Color(0XffC9CCC9), fontSize: 16)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                  color: Color(0XffC9CCC9), fontSize: 14),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const secondpage(),
                              ),
                            );
                          },
                          child: Container(
                              width: 327.w,
                              height: 55.h,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: const Color(0Xff3451FF),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 130,
                                    top: 8,
                                  ),
                                  child: Text(
                                    'Sign In ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0XffC9CCC9),
                                      fontSize: 16.sp,
                                    ),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 327.w,
                          height: 55.h,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 240, 243),
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                              padding: const EdgeInsets.only(left: 90, top: 8),
                              child: Text(
                                'Create New Account',
                                style: TextStyle(
                                  color: const Color(0Xff000000),
                                  fontSize: 16.sp,
                                ),
                              )),
                        ),
                      ),
                    ])),
          )
        ],
      ),
    );
  }
}
