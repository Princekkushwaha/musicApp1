import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/controller.dart';


class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final controller = Get.put(NewsController());
  @override
  // void initState() {
  //   super.initState();
  //   controller.getData();
  // }

  // NewsModal? jsonlist;

  // getData() async {
  //   String url =
  //       "https://newsapi.org/v2/top-headlines?country=in&apiKey=98ef0612a9ee40048f9b6e5b574e6e7c";
  //   try {
  //     final response = await get(
  //       Uri.parse(url),
  //     );
  //     log(response.body);

  //     if (response.statusCode == 200) {
  //       jsonlist = newsModalFromJson(response.body);
  //       log("$jsonlist");
  //       setState(() {});
  //     } else {
  //       log("${response.statusCode}");
  //     }
  //     log("$response");
  //   } catch (e) {
  //     log("catch is -- $e");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: InkWell(
              onTap: () {
                controller.getData();
                log("message");
              },
              child: const Text("Message App")),
        ),
        body: ListView.builder(
          itemCount: controller.jsonlist?.articles.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                controller.jsonlist?.articles[index].urlToImage == null
                    ? const SizedBox(
                        height: 100,
                        child: CircularProgressIndicator(),
                      )
                    : Image.network(controller
                            .jsonlist?.articles[index].urlToImage
                            .toString() ??
                        ""),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      controller.jsonlist?.articles[index].content.toString() ??
                          ""),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          },
        ));
  }
}
