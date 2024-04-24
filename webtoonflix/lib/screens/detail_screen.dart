import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webtoonflix/models/webtoon_detail_model.dart';
import 'package:webtoonflix/models/webtoon_episode_model.dart';
import 'package:webtoonflix/services/api_service.dart';

class DetailScreen extends StatefulWidget {
  final String title, thumb, id;

  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoon;
  late Future<List<webtoonEpisodeModel>> episodes;

  @override
  void initState() {
    super.initState();
    webtoon = Apiservice.getToonById(widget.id);
    episodes = Apiservice.getLatestEpisodesyId(widget.id);
  }

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
        title: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: widget.id,
                child: Container(
                  width: 250,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: const Offset(10, 10),
                            color: Colors.black.withOpacity(0.5))
                      ]),
                  child: Image.network(
                    // errorBuilder: (BuildContext context, Object exception,
                    //     StackTrace? stackTrace) {
                    //   return const Icon(
                    //     Icons.macro_off,
                    //     size: 250,
                    //     color: Colors.white,
                    //   );
                    // },
                    headers: const {
                      "User-Agent":
                          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                      HttpHeaders.refererHeader: 'https://comic.naver.com',
                    },
                    widget.thumb,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          FutureBuilder(
            future: webtoon,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        snapshot.data!.about,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        '${snapshot.data!.genre} / ${snapshot.data!.age}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                );
              }
              return const Text("...");
            },
          ),
          const SizedBox(
            height: 25,
          ),
          FutureBuilder(
            future: episodes,
            builder: (context, snapshot) {
              if (snapshot.hasData) {}
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
