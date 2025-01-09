import 'package:flutter/material.dart';
import 'package:prime_shoe_app/core/color.dart';
import 'package:prime_shoe_app/core/constants.dart';
import 'package:prime_shoe_app/features/prime_shoe/presentaion/store/shoe_store.dart';

import '../../data/model/product_list.dart';

class MostPopular extends StatelessWidget {
  MostPopular({super.key});
  final store = ShoeStore();
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
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: .5,
          children: List<Widget>.generate(
            productList.length,
            (index) => MostPopularWidget(
              brandName: productList[index].brandName,
              imagePath: productList[index].imagePath,
              price:
                  ConstantUtils.format.format(productList[index].productPrice),
              rating: productList[index].rating,
              shoeColor: productList[index].shoeColor,
              shoeType: productList[index].shoeType,
            ),
          ),
        ),
      ],
    );
  }
}

class MostPopularWidget extends StatefulWidget {
  final String imagePath;
  final String shoeType;
  final String shoeColor;
  final num rating;
  final String price;
  final String brandName;

  const MostPopularWidget({
    super.key,
    required this.imagePath,
    required this.shoeType,
    required this.shoeColor,
    required this.rating,
    required this.price,
    required this.brandName,
  });

  @override
  State<MostPopularWidget> createState() => _MostPopularWidgetState();
}

class _MostPopularWidgetState extends State<MostPopularWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialogFun(context, widget.imagePath);
      },
      child: Card(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Stack(
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
                            widget.imagePath,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        icon: isSelected
                            ? const Icon(Icons.favorite)
                            : const Icon(Icons.favorite_border),
                        iconSize: 30,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text.rich(
                  TextSpan(
                    text: '\n${widget.brandName}',
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: '\n${widget.shoeColor}',
                        style: const TextStyle(fontSize: 12),
                      ),
                      TextSpan(
                        text: '\n${widget.shoeType}',
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
                      widget.rating.toString(),
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(ConstantUtils.startImagePath)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  widget.price,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

dynamic showDialogFun(BuildContext context, String imagePath) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              backgroundColor: backgroundColor,
              scrollable: true,
              content: Center(
                child: Expanded(
                  child: InteractiveViewer(
                    minScale: .5,
                    maxScale: 2,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      });
}
