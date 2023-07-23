import 'package:flutter/material.dart';
import 'package:prime_shoe_app/core/color.dart';

InputDecoration inputDecoration(
  String hint,
  String? prefixIconPath,
  String? suffixIconPath,
) {
  return InputDecoration(
    prefixIcon: prefixIconPath != null
        ? Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              prefixIconPath,
              fit: BoxFit.fill,
            ),
          )
        : null,
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(vertical: 20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: const BorderSide(color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: const BorderSide(
        color: Colors.grey,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: const BorderSide(
        color: Colors.white,
        width: 2.0,
      ),
    ),
    filled: true,
    hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
    hintText: hint,
    fillColor: backgroundColor,
    suffixIcon: suffixIconPath != null
        ? Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              suffixIconPath,
              fit: BoxFit.fill,
            ),
          )
        : null,
  );
}
