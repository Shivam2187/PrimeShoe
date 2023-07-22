import 'package:flutter/material.dart';
import 'package:prime_shoe_app/pages/home_page.dart';

import '../pages/wishlist_apge.dart';

class AppNavigationBar extends StatelessWidget {
  final void Function(int)? onTap;
  final int selectedIndex;

  const AppNavigationBar({
    super.key,
    this.onTap,
    required this.selectedIndex,
  });

  static const List<Widget> allPages = [
    HomePage(),
    WishListPage(),
    Center(child: Text('Store')),
    Center(child: Text('Cart')),
    Center(child: Text('Profile')),
  ];

  static final List<BottomNavigationBarItem> navBarItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.favorite_outline), label: "Wishlist"),
    const BottomNavigationBarItem(icon: Icon(Icons.store), label: "Store"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart), label: "Cart"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.account_box_rounded), label: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: navBarItems,
        onTap: onTap,
        currentIndex: selectedIndex,
      ),
      body: allPages[selectedIndex],
    );
  }
}
