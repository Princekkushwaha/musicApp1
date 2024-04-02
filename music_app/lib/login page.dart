// ignore: file_names
import 'package:flutter/material.dart';
import 'package:music_app/second%20page.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

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
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Listen to some',
                        style: TextStyle(
                          color: Color(0XffFFFFFF),
                          fontSize: 32,
                        ),
                      ),
                      const Text(
                        'Drillin',
                        style: TextStyle(
                          color: Color(0XffFFFFFF),
                          fontSize: 32,
                        ),
                      ),
                      const Text(
                        'Beats',
                        style: TextStyle(
                          color: Color(0XffFFFFFF),
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(
                        height: 162,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 327,
                          height: 55,
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
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 327,
                          height: 55,
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
                      const SizedBox(
                        height: 8,
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
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>  secondpage(),
                              ),
                            );
                          },
                          child: Container(
                              width: 327,
                              height: 55,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: const Color(0Xff3451FF),
                                  borderRadius: BorderRadius.circular(16)),
                              child: const Padding(
                                  padding: EdgeInsets.only(
                                    left: 130,
                                    top: 8,
                                  ),
                                  child: Text(
                                    'Sign In ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XffC9CCC9),
                                      fontSize: 16,
                                    ),
                                  ))),
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 327,
                          height: 55,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 240, 243),
                              borderRadius: BorderRadius.circular(16)),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 90, top: 8),
                              child: Text(
                                'Create New Account',
                                style: TextStyle(
                                  color: Color(0Xff000000),
                                  fontSize: 16,
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
