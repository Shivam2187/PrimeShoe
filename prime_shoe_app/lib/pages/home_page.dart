import 'package:flutter/material.dart';
import 'package:prime_shoe_app/core/constants.dart';
import 'package:prime_shoe_app/widgets/app_header.dart';
import 'package:prime_shoe_app/widgets/most_popular.dart';
import 'package:prime_shoe_app/widgets/top_brand.dart';

import '../core/input_decoration.dart';
import '../widgets/preview_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            AppHeader(),
            TextField(
              decoration: inputDecoration(ConstantUtils.searchHere,
                  ConstantUtils.searchIconPath, ConstantUtils.filterIconPath),
            ),
            const SizedBox(
              height: 25,
            ),
            const FilledPreviewImage(
              percentageDiscount: ConstantUtils.percentageDiscount +
                  ConstantUtils.percentageSymbol,
              imagePath: ConstantUtils.todayShoeImagePath,
            ),
            const SizedBox(
              height: 30,
            ),
            const TopBrand(),
            const SizedBox(
              height: 18,
            ),
            MostPopular()
          ],
        ),
      )),
    );
  }
}
