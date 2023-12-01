import 'dart:developer';

import 'package:rivision/model.dart';
import 'package:http/http.dart' as http;

class DemoData {
  static Future<List<DemoModel>?> demoModel() async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    log("api ${response.body}");
    return demoModelFromJson(response.body);
  }
}
