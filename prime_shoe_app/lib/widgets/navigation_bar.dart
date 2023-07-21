import 'package:flutter/material.dart';
import 'package:prime_shoe_app/pages/home_page.dart';

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
    Center(child: Text('Page 2')),
    Center(child: Text('Page 3')),
    Center(child: Text('Page 4')),
  ];

  static final List<BottomNavigationBarItem> navBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.access_alarms), label: "Home"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.accessible_forward_outlined), label: "Cart"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.card_travel), label: "Order"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.accessible_forward_outlined), label: "Profile"),
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
