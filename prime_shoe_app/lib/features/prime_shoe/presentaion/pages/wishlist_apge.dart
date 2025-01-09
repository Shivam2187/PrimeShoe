import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:prime_shoe_app/core/constants.dart';
import 'package:prime_shoe_app/core/locator.dart';
import 'package:prime_shoe_app/features/prime_shoe/presentaion/store/shoe_store.dart';
import 'package:prime_shoe_app/features/prime_shoe/presentaion/widgets/app_bar.dart';

import '../widgets/most_popular.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = locator.get<ShoeStore>();
    return Observer(
      builder: (context) {
        final dummyWishlistProducts = store.productDetailsList.value;

        return Scaffold(
          appBar: defaultAppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: store.productDetailsList.value.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 20,
                    childAspectRatio: .55),
                itemBuilder: (context, index) => MostPopularWidget(
                  brandName: dummyWishlistProducts[index].brandName,
                  imagePath: dummyWishlistProducts[index].imagePath,
                  price: ConstantUtils.format
                      .format(dummyWishlistProducts[index].productPrice),
                  rating: dummyWishlistProducts[index].rating,
                  shoeColor: dummyWishlistProducts[index].shoeColor,
                  shoeType: dummyWishlistProducts[index].shoeType,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
