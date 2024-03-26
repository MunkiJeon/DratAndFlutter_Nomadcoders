1.The SDK configured in dart.flutterSdkPath is not a valid SDK folder.
원인: dart setting.json 파일의 dart.flutterSdkPath의 정보가 잘못됨( 이전에 설치해서 연결했던 SDK 위치로 되있었음)
결과: flutter가 설치되고 SDK가 설치된 경로로 변경후 정상 작동
2.Your project contains issues that can be fixed by running "dart fix" from the command line.
=> 터미널에 dart fix --dry-run 입력 -> 원인 찾아줌
dart fix --apply ->알아서 원인 적용 해줌...
* 참고한 링크 : https://stackoverflow.com/questions/77307967/your-project-contains-issues-that-can-be-fixed-by-running-dart-fix-from-the-co
3. test 폴더에 widget_test.dart 에서 발생된 애러 
 > The name 'MyApp' isn't a class. Try correcting the name to match an existing class.
 원인 : 'MyApp'이름의 클래스가 없기 때문
 결과 : 처음 만들때 'MyApp'였다가 'App'으로 변경 때문에 라고 추정 - 주석처리 함
4. The constructor being called isn't a const constructor. Try removing 'const' from the constructor invocation.
원인 : 'MaterialApp'에 const가 되어 있어 "textTheme: TextTheme()" 줄에서 변경불가해서 뜸
결과 : textTheme에 const 넣음 -> textTheme: const TextTheme
5. 'headline1' is deprecated and shouldn't be used. Use displayLarge instead. This feature was deprecated after v3.1.0-0.0.pre.
Try replacing the use of the deprecated member with the replacement.
원인 : 이전에는 사용 되었으나 현재 미사용
결과 : 'headline1'대신 ''