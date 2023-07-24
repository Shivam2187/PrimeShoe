import 'package:flutter/material.dart';
import 'package:prime_shoe_app/core/color.dart';

import '../model/dummy_prduct_details.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Most Popular',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text(
                'SEE ALL',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        GridView.count(
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: .6,
          children: List<Widget>.generate(
            dummyProducts.length,
            (index) => MostPopularWidget(
              brandName: dummyProducts[index].brandName,
              imagePath: dummyProducts[index].imagePath,
              price: dummyProducts[index].productPrice,
              isWishListed: true,
              rating: dummyProducts[index].rating,
              shoeColor: dummyProducts[index].shoeColor,
              shoeType: dummyProducts[index].shoeType,
            ),
          ),
        ),
      ],
    );
  }
}

class MostPopularWidget extends StatelessWidget {
  final String imagePath;
  final String shoeType;
  final String shoeColor;
  final num rating;
  final num price;
  final String brandName;
  final void Function()? onPressed;
  final bool isWishListed;

  const MostPopularWidget(
      {super.key,
      required this.imagePath,
      required this.shoeType,
      required this.shoeColor,
      required this.rating,
      required this.price,
      required this.brandName,
      this.onPressed,
      required this.isWishListed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Center(
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
              ),
              Positioned(
                right: 6,
                top: 6,
                child: IconButton(
                  isSelected: isWishListed,
                  selectedIcon: const Icon(Icons.favorite),
                  onPressed: onPressed,
                  icon: const Icon(Icons.favorite_border),

                  // icon: Image.asset('assets/heart.png'),
                  iconSize: 30,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text.rich(
              TextSpan(
                text: '\n$brandName',
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: '\n$shoeColor',
                    style: const TextStyle(fontSize: 12),
                  ),
                  TextSpan(
                    text: '\n$shoeType',
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              children: [
                Text(
                  rating.toString(),
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset('assets/star.png')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              'Rs. $price',
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
