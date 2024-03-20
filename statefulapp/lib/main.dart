import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// Stateless - 그저 보여주기만 하는 위젯
// Stateful - 데이처가 변경되면 적용되는 위젯
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // //int counter = 0; // dart의 클래스 프로퍼티임
  // List<int> numbers = [];
  // void onClicked() {
  //   // counter = counter + 1; 밖에 둬도 "setState"가 있으면 가능하지만 가독성 및 명확성을 위해 "setState"안에 넣음
  //   setState(() {
  //     // 바뀐 데이터가 있으니 state에게 새로고침을 명령함
  //     // build 메소드를 다시 호출
  //     //counter = counter + 1;
  //     numbers.add(numbers.length);
  //   });
  // }

  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          //
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xfff4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Text(
              //   'Click Count',
              //   style: TextStyle(fontSize: 30),
              // ),
              // // Text(
              // //   '$counter',
              // //   style: const TextStyle(fontSize: 30),
              // // ),
              // for (var n in numbers) Text('$n'),
              // IconButton(
              //   iconSize: 40,
              //   onPressed: onClicked,
              //   icon: const Icon(Icons.add_box_rounded),
              // ),
              showTitle ? const MyLargeTitle() : const Text('nothing...'),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(
                  Icons.remove_red_eye_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    // 상태를 초기화 하기위한 메서드 - 부모 데이터 초기화 할때? 사용하기도 함
    // 항상 build 하기전에 한번 호출됨
    // TODO: implement initState
    super.initState();
    print('initStat!!');
  }

  @override
  void dispose() {
    // 위젯이 스크린에서 제거될때 호출
    // api업데이트 혹은 리스너에서 나갈때 무언가 취소할때
    // TODO: implement dispose
    super.dispose();
    print('dispose!!');
  }

  @override
  Widget build(BuildContext context) {
    print('build!!');
    // BuildContext의 context : 상위 부모의 모든 것을 들고 있음,
    // 즉 위젯트리의 모든 정보를 가지고 있음
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
