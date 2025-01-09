import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:prime_shoe_app/features/prime_shoe/presentaion/store/shoe_store.dart';

import '../widgets/navigation_bar.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final store = ShoeStore();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Observer(
        builder: (context) => AppNavigationBar(
          selectedIndex: store.selectedNavBar.value,
          onTap: (index) {
            store.selectedNavBarOnTap(index);
          },
        ),
      ),
    );
  }
}
