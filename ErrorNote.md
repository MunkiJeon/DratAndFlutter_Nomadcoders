1.The SDK configured in dart.flutterSdkPath is not a valid SDK folder.
원인: dart setting.json 파일의 dart.flutterSdkPath의 정보가 잘못됨( 이전에 설치해서 연결했던 SDK 위치로 되있었음)
결과: flutter가 설치되고 SDK가 설치된 경로로 변경후 정상 작동
2.Your project contains issues that can be fixed by running "dart fix" from the command line.
=> 터미널에 dart fix --dry-run 입력 -> 원인 찾아줌
dart fix --apply ->알아서 원인 적용 해줌...
* 참고한 링크 : https://stackoverflow.com/questions/77307967/your-project-contains-issues-that-can-be-fixed-by-running-dart-fix-from-the-co
3. 