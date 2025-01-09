import 'package:flutter/material.dart';
import 'package:prime_shoe_app/core/constants.dart';

AppBar defaultAppBar() {
  return AppBar(
    title: const Text(
      "My Wishlist",
      style: TextStyle(color: Colors.black),
    ),
    actions: <Widget>[
      IconButton(
        icon: Image.asset(ConstantUtils.searchIconPath),
        onPressed: () {},
        color: Colors.black,
      ),
    ],
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.chevron_left_sharp),
      onPressed: () {},
      color: Colors.black,
    ),
  );
}
