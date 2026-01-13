import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_practice_1/matzip.dart';

class MatzipRepository {
  //파이어스토어에서 맛집가져와서 맛집리스트로 변환해서 전달
  Future<List<Matzip>> getAllMatzip() async {
    print('getAllMatzip 호출됨');

    // 켈렉션 모든 문서들 가지고오기
    final colRef = FirebaseFirestore.instance.collection('matzip');

    //List -> Map
    //맛집리스트로 변환
    //맛집리스트 반환
    return [];
  }
}
