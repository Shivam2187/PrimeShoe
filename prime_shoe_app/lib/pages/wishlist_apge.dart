import 'package:flutter/material.dart';

import '../model/dummy_prduct_details.dart';
import '../widgets/most_popular.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: dummyProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: .65),
          itemBuilder: (context, index) => MostPopularWidget(
            brandName: dummyProducts[index].brandName,
            imagePath: 'assets/shoe/puma 1.png',
            price: dummyProducts[index].productPrice,
            isWishListed: true,
            rating: dummyProducts[index].rating,
            shoeColor: dummyProducts[index].shoeColor,
            shoeType: dummyProducts[index].shoeType,
          ),
        ),
      ),
    );
  }
}
