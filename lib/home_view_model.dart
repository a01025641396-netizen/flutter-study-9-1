import 'package:flutter_practice_1/matzip.dart';
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
    return HomeState(matzippList: []);
  }
}

final HomeViewModelProcider = NotifierProvider<HomeViewModel, HomeState>(() {
  return HomeViewModel();
});
