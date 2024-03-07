2024.03.05 시작!
# DratAndFlutter_Nomadcoders
> Dart와 Flutter 강의 - Nomadcoders 버전

> VS Code에서 FLutter(Dart 포함되 있음) SDK 다운 후 적용
> [https://docs.flutter.dev/get-started/install/windows/desktop]
* 사전 준비 내용
* 소스 코드 관리를 위한 Windows 2.27 이상용 Git.
* 텍스트 편집기 또는 IDE 구성
* 인기 있는 옵션
* VS Code용 Flutter 확장이 포함된 Visual Studio Code 1.77 이상 . <<난 이거 선택
* IntelliJ용 Flutter 플러그인이 포함된 Android Studio 2023.1(Hedgehog) 이상 .
* IntelliJ용 Flutter 플러그인이 포함된 IntelliJ IDEA 2023.1 이상 .

1. Flutter SDK 설치
- 방법은 "VS Code를 사용한 설치" 와 "다운로드 및 설치" (난 간편한 VS Code 사용설치)
- Flutter를 설치하라는 VS Code 프롬프트
    1. VS 코드를 시작합니다.
    2. 명령 팔레트를 열려면 Control+ Shift+를 누르십시오 P.
    3. 명령 팔레트 에 를 입력합니다 flutter.
    4. Flutter: 새 프로젝트를 선택합니다 .
    5. VS Code는 컴퓨터에서 Flutter SDK를 찾으라는 메시지를 표시합니다.
     - Flutter SDK가 설치되어 있으면 SDK 찾기를 클릭하세요 .
     - Flutter SDK가 설치되어 있지 않은 경우 SDK 다운로드를 클릭하세요 . (이 옵션은 개발 도구 필수 구성 요소 의 지시에 따라 Windows용 Git을 설치하지 않은 경우 Flutter 설치 페이지를 보냅니다 .)
    6. 어떤 Flutter 템플릿을 선택하라는 메시지가 표시되면 ? , 무시해. 누르다 Esc. 개발 설정을 확인한 후 테스트 프로젝트를 생성할 수 있습니다.
2. Flutter SDK 다운로드
    1. Flutter SDK용 폴더 선택 대화 상자가 표시 되면 Flutter를 설치할 위치를 선택하세요. VS Code는 시작하려면 사용자 프로필에 배치합니다. 다른 위치를 선택하세요.
    2. Flutter 복제를 클릭합니다 . Flutter를 다운로드하는 동안 VS Code는 다음 팝업 알림을 표시합니다.
     - Downloading the Flutter SDK. This may take a few minutes.
    3. Flutter 다운로드가 완료되면 출력 패널이 표시됩니다.
     - Checking Dart SDK version...
     - Downloading Dart SDK from the Flutter engine ...
     - Expanding downloaded archive...
     + 성공하면 VS Code는 다음 팝업 알림을 표시합니다.
     - Initializing the Flutter SDK. This may take a few minutes.
     + 초기화하는 동안 출력 패널에 다음이 표시됩니다.
     - Building flutter tool...
     - Running pub upgrade...
     - Resolving dependencies...
     - Got dependencies.
     - Downloading Material fonts...
     - Downloading Gradle Wrapper...
     - Downloading package sky_engine...
     - Downloading flutter_patched_sdk tools...
     - Downloading flutter_patched_sdk_product tools...
     - Downloading windows-x64 tools...
     - Downloading windows-x64/font-subset tools...
     + Flutter 설치가 성공하면 VS Code는 다음 팝업 알림을 표시합니다.
     - Do you want to add the Flutter SDK to PATH so it's accessible
     - in external terminals?
    4. PATH에 SDK 추가를 클릭합니다 .
     + 성공하면 다음과 같은 알림이 표시됩니다.
    5. VS Code는 Google Analytics 알림을 표시할 수 있습니다. 동의하면 확인 을 클릭합니다 .
    6. VS Code 다시 시작!
