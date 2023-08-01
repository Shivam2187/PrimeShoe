import 'package:mobx/mobx.dart';

class ShoeStore {
  final Observable<int> selectedNavBar = Observable(0);

  final Observable<bool> isWishlisted = Observable(false);

  void init() {}

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
}
