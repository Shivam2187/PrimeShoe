import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

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
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => const WishListPage()));
            },
            icon: const Icon(Icons.favorite_border_outlined),
            // icon: Image.asset('assets/heart.png'),
            iconSize: 30,
          )
        ],
      ),
    );
  }
}
