import 'package:flutter/material.dart';

AppBar defaultAppBar() {
  return AppBar(
    title: const Text(
      "My Wishlist",
      style: TextStyle(color: Colors.black),
    ),
    actions: <Widget>[
      IconButton(
        icon: Image.asset('assets/searchIcon.png'),
        tooltip: 'Comment Icon',
        onPressed: () {},
        color: Colors.black,
      ),
    ],
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.chevron_left_sharp),
      tooltip: 'Menu Icon',
      onPressed: () {},
      color: Colors.black,
    ),
  );
}
