import 'package:mobx/mobx.dart';

class ShoeStore {
  final Observable<bool> switchState = Observable(false);

  final Observable<int> selectedNavBar = Observable(0);
  final Observable<bool> isWishlisted = Observable(false);

  void init() {}

  void dispose() {}
  void wishListedOnTap() {
    runInAction(
      () {
        if (isWishlisted.value == false) {
          isWishlisted.value = true;
        } else {
          isWishlisted.value = false;
        }
      },
    );
  }

  void selectedNavBarOnTap(int index) {
    runInAction(
      () {
        selectedNavBar.value = index;
      },
    );
  }
}
