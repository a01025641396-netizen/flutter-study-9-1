import 'package:flutter_practice_1/matzip.dart';
import 'package:flutter_practice_1/matzip_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeState {
  //여기에 맛집 리스트
  final List<Matzip> matzippList;
  HomeState({required this.matzippList});
}

class HomeViewModel extends Notifier<HomeState> {
  @override
  HomeState build() {
    print('뷰모델 bulid 호출됨');
    getData();

    return HomeState(matzippList: []);
  }

  void getData() async {
    print("");
    final repo = MatzipRepository();
    final matzipList = await repo.getAllMatzip();
    // 여기서 Firestore 데이터 가져와서 Matzip 리스트로 변환한뒤
    // 상태 업데이트!
  }
}

final HomeViewModelProcider = NotifierProvider<HomeViewModel, HomeState>(() {
  return HomeViewModel();
});
