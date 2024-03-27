import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webtoonflix/models/webtoon_model.dart';

class Apiservice {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> gatTodaysToos() async {
    List<WebtoonModel> webtoonInstencse = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    /*
    get funtion의 타입은 Future<Response> 
    Future = 미래에 완료되어 올 값을 받는 타입
    <Response> = 응답값이 담겨져 옴

    await = 응답이 올때까지 기다리게 하는 역활, 
            반드시 async(비동기)(programming) 함수만 가능
    */
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        //print(webtoon);
        //final toon = WebtoonModel.fromJson(webtoon);
        webtoonInstencse.add(WebtoonModel.fromJson(webtoon));
        //print(toon.title);
      }
      return webtoonInstencse;
    }
    throw Error();
  }
}
