import 'package:flutter/material.dart';
import 'package:flutter_practice_1/home_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(HomeViewModelProcider);
    print("맛집 개수 :${state.matzippList.length}");
    return Scaffold(appBar: AppBar(title: Text("나의 맛집 리스트")));
  }
}
