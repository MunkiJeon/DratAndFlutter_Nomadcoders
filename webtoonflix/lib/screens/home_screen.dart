import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
    );
  }
}
