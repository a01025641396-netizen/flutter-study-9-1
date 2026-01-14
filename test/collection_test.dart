import 'dart:convert';
import 'dart:math';

import 'package:flutter_practice_1/matzip.dart';
import 'package:flutter_test/flutter_test.dart';

final jsonDart = """
[
  {
    "상호명": "진미평양냉면",
    "주소": "서울특별시 강남구 학동로 305-3",
    "평점": "4.5"
  },
  {
    "상호명": "우래옥",
    "주소": "서울특별시 중구 창경궁로 62-29",
    "평점": "4.8"
  },
  {
    "상호명": "명동교자 본점",
    "주소": "서울특별시 중구 명동10길 29",
    "평점": "4.7"
  }

]
""";

void main() {
  test("켈렉션 메서드 테스트", () {
    //1. Map 으로 바뀌줌
    List<dynamic> box = jsonDecode(jsonDart);

    //2. 객체로 바꾸기
    List<Matzip> matzipList = [];

    for (var i = 0; i < box.length; i++) {
      print(box[i]);
      print(box[i].runtimeType);
      Map<String, dynamic> e = box[i];
      Matzip m = conevrtMatzip(e);
      matzipList.add(m);
    }
    print(matzipList.length);
    //Collection 메서드 : map
    List<Matzip> marzipList2 =
        box.map((e) {
          return Matzip.fromJson(e);
        }).toList();
  });
}

Matzip conevrtMatzip(dynamic e) {
  Matzip m = Matzip.fromJson(e);
  return m;
}
