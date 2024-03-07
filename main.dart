void main(){
  /* -----------#1 VARIABLES------------- */
  // print('hello world~~~');
  
  // var name =  '문키'; // var : 함수나 메소드 안에 지역변수로 많이 사용
  String name = '문키';
  // name = 1; 혹은 name = true; 안됨 
  //=> 선언을 스트링 타입으로 먼저 선언 했기 때문에 타입을 맞춰야 함
  name = 'munki';

  //dynamic =  어떤타입이 들어올지 모를때 사용
  //-> 여러타입을 다 가능케함 *정말 필요할때에 만 사용할것!!
  //dynamic dy_name; 
  //타입이 명확해 지면 해당 타입의 속성을 쓸수있음 
  // if(dy_name is String){ dy_name.length} 
  // if(dy_name is int){ dy_name.isEven}

  //nullsafety
  String? mk = 'munki';//? 를 붙이면 mk가 String 일수도 있고 null 일수도 있다를 표현 함
  mk = null;
  // mk.length; //mk가 null일수 있어서 사용 불가하다고 알려줌
  if(mk != null){ mk.isNotEmpty; }//mk가 null 이 아님을 명시 했기 때문에 null일 경우를 무시함 
  mk?.isNotEmpty;//이렇게도 가능함

  final fin_Var = 'like const';//한번 선언 및 값이 정의된 이후 변경 불가함
  final int fin_Int = 1234;//명확하게 자료형을 지정해 줄수도 있음

  final googoo;

  late final String gogogaga;
  //do something, go to api = API에어 한번 값을 받아 변경 불가하게 사용 할때 사용
  // print(gogogaga); // 아직 데이터를 정의하지 않았기에 사용 불가
  gogogaga = 'lateData';

  const con_val = '고정';//final과 동일해 보이지만 컴파일 전에 알고있는 값(API 값 같은?) 을 사용 해야한다.

  print('hello '+ name);
  print('hello '+ fin_Var);
  print(fin_Int);

/* ------------#2 DATA TYPES------------ */
  String str = "aaa";
  bool alive = true;
  int age = 12;
  double money = 60.99;

  num x = 12; // int double 의 상위 클래스 자료형
  x = 1000.199; // 정수 인지 실수인지 정확하게 구분

  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if(giveMeFive) 5, //collection if
    ];
  // List<int> numbers = [1,2,3,4,];
  numbers.first;// 1
  numbers.last;//  5

  var myName = 'MunKi';
  var myAge = 25;
  var greeting = "hello My name is $myName, and I\'m ${myAge + 6 }";
  //단순히 변수 사용은 앞에 "$" 표시, 연산을 적용하려면 "${}" 사용
  print(greeting);
  
  var oldFriends = ['soo','saa'];
  var newFriends = [
    'gogi',
    'welsi',
    'koki',
    for (var friend in oldFriends) "👍 $friend",
  ];
  print(newFriends);

  // var player = { //단순한 맵 구조는 key 와 Value 로 되어있음
  //   'name': 'Tomi',
  //   'exp': 98.95,
  //   'lv': 23,
  // };
  // Map<List<int>,bool> player = { //데이터 타입을 지정해 줄수있음
  //   [1,2,3,5,6]:true,
  //   [4,5,6,7,6]:false,
  //   [3,4,5,6,8]:true,
  // };
  List<Map<String,Object>> player = [ //리스트 안에 타입으로 지정해 줄수도 있음
    {'name':'komodo'},
    {'coordinate':[0,0,]},
    {'hp':'komodo'},
  ]; //이런식의 복잡한 데이터는 class로 처리하는게 더 좋음

  Set<int> uniqueNumbers = {1,2,3,4,5,};
  uniqueNumbers.add(1);
  uniqueNumbers.add(1);
  uniqueNumbers.add(1);
  uniqueNumbers.add(1);
  List<int> unUniqueNumbers = [1,2,3,4,5,];
  unUniqueNumbers.add(1);
  unUniqueNumbers.add(1);
  unUniqueNumbers.add(1);
  unUniqueNumbers.add(1);
  print("SET value: $uniqueNumbers");
  print("List valur: $unUniqueNumbers");
  //Set과 List의 차이는 가지고 있는 아이템의 Unique(아이탬이 하나만 존재함) 차이이다
}