import 'package:get_it/get_it.dart';

import '../features/prime_shoe/presentaion/store/shoe_store.dart';

final locator = GetIt.instance;

class DependencyInjection {
  void setupLocator() {
    locator.registerSingleton(ShoeStore());
  }
}
