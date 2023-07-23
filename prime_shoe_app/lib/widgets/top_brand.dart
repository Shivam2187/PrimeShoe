import 'package:flutter/material.dart';

import '../model/dummy_brand_details.dart';

class TopBrand extends StatelessWidget {
  const TopBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      
      spacing: 30,
      alignment: WrapAlignment.center,
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: List<Widget>.generate(
        topBrandModel.length,
        (int index) {
          return TopBrandWidget(
              imagePath: topBrandModel.elementAt(index).imagePath,
              brandName: topBrandModel.elementAt(index).brandName);
        },
      ).toList(),
    );
  }
}

class TopBrandWidget extends StatelessWidget {
  const TopBrandWidget({
    super.key,
    required this.imagePath,
    required this.brandName,
  });

  final String imagePath;
  final String brandName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 57,
          height: 57,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(0),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          brandName,
          style: const TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
