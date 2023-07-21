import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../store/shoe_store.dart';

class MostPopular extends StatelessWidget {
  MostPopular({super.key});
  final store = ShoeStore();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => Wrap(
        spacing: 30,
        alignment: WrapAlignment.start,
        direction: Axis.horizontal,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          MostPopularWidget(
            brandName: 'Puma',
            imagePath: 'assets/shoe/pumaShoe.png',
            price: 15000,
            rating: 4.5,
            shoeColor: 'Solid Adivat',
            shoeType: 'Running shoe',
            onPressed: store.wishListedOnTap,
          ),
          MostPopularWidget(
            brandName: 'Puma',
            imagePath: 'assets/shoe/adidasShoe.png',
            price: 15000,
            rating: 4.5,
            shoeColor: 'Men Black Solid',
            shoeType: 'Colourblocked  Sneakers',
            onPressed: store.wishListedOnTap,
          ),
          MostPopularWidget(
            brandName: 'Puma',
            imagePath: 'assets/shoe/pumaShoe.png',
            price: 15000,
            rating: 4.5,
            shoeColor: 'Solid Adivat',
            shoeType: 'Running shoe',
            onPressed: store.wishListedOnTap,
          ),
          MostPopularWidget(
            brandName: 'Puma',
            imagePath: 'assets/shoe/adidasShoe.png',
            price: 15000,
            rating: 4.5,
            shoeColor: 'Men Black Solid',
            shoeType: 'Colourblocked  Sneakers',
            onPressed: store.wishListedOnTap,
          ),
          MostPopularWidget(
            brandName: 'Puma',
            imagePath: 'assets/shoe/pumaShoe.png',
            price: 15000,
            rating: 4.5,
            shoeColor: 'Solid Adivat',
            shoeType: 'Running shoe',
            onPressed: store.wishListedOnTap,
          ),
          MostPopularWidget(
            brandName: 'Puma',
            imagePath: 'assets/shoe/adidasShoe.png',
            price: 15000,
            rating: 4.5,
            shoeColor: 'Men Black Solid',
            shoeType: 'Colourblocked  Sneakers',
            onPressed: store.wishListedOnTap,
          )
        ],
      ),
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

  MostPopularWidget(
      {super.key,
      required this.imagePath,
      required this.shoeType,
      required this.shoeColor,
      required this.rating,
      required this.price,
      required this.brandName,
      this.onPressed});
  final store = ShoeStore();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => SizedBox(
        width: 160,
        height: 270,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: SizedBox(
                    height: 160,
                    width: 160,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  right: 6,
                  top: 6,
                  child: IconButton(
                    onPressed: onPressed,
                    icon: store.isWishlisted.value
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_border),
                    // icon: Image.asset('assets/heart.png'),
                    iconSize: 30,
                  ),
                )
              ],
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
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
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
        ),
      ),
    );
  }
}
