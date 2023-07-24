import 'package:flutter/material.dart';
import 'package:prime_shoe_app/widgets/app_bar.dart';

import '../model/dummy_prduct_details.dart';

import '../widgets/most_popular.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: dummyWishlistProducts.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 20,
                childAspectRatio: .75
                ),
            itemBuilder: (context, index) => MostPopularWidget(
              brandName: dummyWishlistProducts[index].brandName,
              imagePath:  dummyWishlistProducts[index].imagePath,
              price: dummyWishlistProducts[index].productPrice,
              isWishListed: true,
              rating: dummyWishlistProducts[index].rating,
              shoeColor: dummyWishlistProducts[index].shoeColor,
              shoeType: dummyWishlistProducts[index].shoeType,
            ),
          ),
        ),
      ),
    );
  }
}
