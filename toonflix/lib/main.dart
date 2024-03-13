import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  //1. StatelessWidget을 상속(extends)하여 Widget으로 만듬 ()
  @override
  Widget build(BuildContext context) {
    //2. wiget을 만들기 위해서는 build 메소드를 꼭 정의 해야 하며 build 메소드는 widget 을 ui로 띄워주는 역활을 함
    //return CupertinoApp() // = IOS 모양으로 앱ui 구성
    return MaterialApp( // = 구글 모양으로 앱ui 구성
      home: Scaffold( // 화면의 구성및 구조에 관한 것들을 가지고 있는 Widget
        appBar: AppBar(
          title: Text('hello Flutter!'),
          elevation: 10,
          centerTitle: true,
          backgroundColor: Color(0xFF00FF00),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
