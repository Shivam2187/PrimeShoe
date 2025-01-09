import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:prime_shoe_app/core/constants.dart';
import 'package:prime_shoe_app/features/prime_shoe/presentaion/store/shoe_store.dart';

class AppHeader extends StatelessWidget {
  AppHeader({super.key});

  final store = ShoeStore();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            height: 46,
            width: 148,
            child: Image.asset(ConstantUtils.shoeRackIconPath),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              runInAction(() => store.selectedNavBarOnTap(0));
            },
            icon: const Icon(Icons.favorite_border_outlined),
            iconSize: 30,
          )
        ],
      ),
    );
  }
}
