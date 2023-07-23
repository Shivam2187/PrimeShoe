import 'package:flutter/material.dart';
import 'package:prime_shoe_app/store/shoe_store.dart';

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
            child: Image.asset('assets/shoeRack.png'),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              store.selectedNavBarOnTap(0);
            },
            icon: const Icon(Icons.favorite_border_outlined),
            iconSize: 30,
          )
        ],
      ),
    );
  }
}
