// ignore_for_file: avoid_print

import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';

class ShoeStore {
  final dio = Dio();

  final Observable<int> selectedNavBar = Observable(0);

  final Observable<bool> isWishlisted = Observable(false);

  void init() {
    print('****InIt****');
  }

  void dispose() {}
  void wishListedOnTap() {
    if (isWishlisted.value == false) {
      runInAction(() => isWishlisted.value = true);
    } else {
      runInAction(() => isWishlisted.value = false);
    }
  }

  void selectedNavBarOnTap(int index) {
    runInAction(
      () {
        selectedNavBar.value = index;
      },
    );
  }

  void getShoeData() async {
    try {
      final response = await dio.get(' http://localhost:8080/productCatalog');
      print(response.data);
    } catch (e, stackTrace) {
      print('Exception: $e');
      print('Stack Trace: $stackTrace');
    }
  }
}
