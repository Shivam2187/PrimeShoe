import 'package:flutter/material.dart';
import 'package:prime_shoe_app/core/constants.dart';

class ActionChoiceExample extends StatefulWidget {
  const ActionChoiceExample({super.key});

  @override
  State<ActionChoiceExample> createState() => _ActionChoiceExampleState();
}

class _ActionChoiceExampleState extends State<ActionChoiceExample> {
  int? _value = 1;
  List<String> brandName = ConstantUtils.brandName;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List<Widget>.generate(
          brandName.length,
          (int index) {
            return ChoiceChip(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              side: const BorderSide(color: Colors.black),
              backgroundColor: Colors.white,
              labelPadding: const EdgeInsets.symmetric(horizontal: 10),
              selectedColor: Colors.black,
              label: Text(
                brandName.elementAt(index),
              ),
              selected: _value == index,
              onSelected: (bool selected) {
                setState(() {
                  _value = selected ? index : null;
                });
              },
            );
          },
        ).toList(),
      ),
    );
  }
}
