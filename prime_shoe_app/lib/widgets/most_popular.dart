import 'package:flutter/material.dart';

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
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: dummyProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 160,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(241, 241, 241, 1),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
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
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          brandName,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Text(
          shoeColor,
          style: const TextStyle(fontSize: 12),
        ),
        Text(
          shoeType,
          style: const TextStyle(fontSize: 12),
        ),
        Row(
          children: [
            Text(
              rating.toString(),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 5,
            ),
            Image.asset('assets/star.png')
          ],
        ),
        Text(
          'Rs. $price',
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
