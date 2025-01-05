import 'package:flutter/material.dart';

import '../model/brand_type_list.dart';

class TopBrand extends StatelessWidget {
  const TopBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: brandTypeList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 5,
          crossAxisSpacing: 30,
          childAspectRatio: .65),
      itemBuilder: (context, index) => TopBrandWidget(
          imagePath: brandTypeList.elementAt(index).imagePath,
          brandName: brandTypeList.elementAt(index).brandName),
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
