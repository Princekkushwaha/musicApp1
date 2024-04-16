import 'dart:developer';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart';
import 'package:music_app/model.dart';

class NewsController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getData();
  }

  NewsModal? jsonlist;

  getData() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=98ef0612a9ee40048f9b6e5b574e6e7c";
    try {
      final response = await get(
        Uri.parse(url),
      );

      if (response.statusCode == 200) {
        jsonlist = newsModalFromJson(response.body);
        log("message= ${response.statusCode}");
      } else {
        log("message error= ${response.statusCode}");
      }
      log("$response");
    } catch (e) {
      log("catch is -- $e");
    }
  }
}
