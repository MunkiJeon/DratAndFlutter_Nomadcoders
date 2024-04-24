import 'package:flutter/material.dart';
import 'package:webtoonflix/models/webtoon_model.dart';
import 'package:webtoonflix/services/api_service.dart';
import 'package:webtoonflix/widgets/webtoon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = Apiservice.gatTodaysToos();

  // //StatefulWidge방식
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //screen을 위한 기본적인 레이아웃을 제공해줌
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.white, //appbar의 그림자색
        elevation: 5, //appbar의 그림자 깊이
        backgroundColor: Colors.white, //appbar의 배경색
        foregroundColor: Colors.green, //appbar의 글자색
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 24,
          ),
        ),
      ),
      body: FutureBuilder(
        // FutureBuilder위젯 자체적으로 await을 걸어 Data오길 기다려 줌
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return //const Text("There is data!");
                //ListView(
                // children: [
                //   for (var webtoon in snapshot.data!) Text(webtoon.title)
                //   // snapshot.data = Future<List<WebtoonModel>>
                // ],
                // ListView.builder(
                Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(child: makeList(snapshot))
              ],
            );
          }
          return //const Text("Loading....");
              const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      itemBuilder: (context, index) {
        // itemBuilder : 사용자가 보는 아이템만 build 할때 사용
        var webtoon = snapshot.data![index];

        return Webtoon(
            title: webtoon.title, thumb: webtoon.thumb, id: webtoon.id);
      },
      // separatorBuilder : 각 widget 사이를 렌더해줌
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}
