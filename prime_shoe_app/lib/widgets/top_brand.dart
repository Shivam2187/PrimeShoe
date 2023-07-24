import 'package:flutter/material.dart';

import '../model/dummy_brand_details.dart';

class TopBrand extends StatelessWidget {
  const TopBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: topBrandModel.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 5,
          crossAxisSpacing: 30,
          childAspectRatio: .65),
      itemBuilder: (context, index) => TopBrandWidget(
          imagePath: topBrandModel.elementAt(index).imagePath,
          brandName: topBrandModel.elementAt(index).brandName),
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
        FittedBox(
          child: Text(
            brandName,
            style: const TextStyle(fontSize: 12),
          ),
        )
      ],
    );
  }
}
