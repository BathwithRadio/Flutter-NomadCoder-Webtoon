import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon.dart';

class ApiService {
  //

  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  // Future - a type something that will happen future
  Future<List<WebtoonModel>> getTodaysToons() async {
    //
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    // await - Dart에서 API요청이 처리되서 응답을 받을 때 까지 기다리도록 할 것
    // 단 이것은 async function 내에서만 동작한다 - fucntion 뒤에 await를 붙임
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
