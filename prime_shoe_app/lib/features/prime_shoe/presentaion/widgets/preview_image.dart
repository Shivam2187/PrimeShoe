import 'package:flutter/material.dart';

class FilledPreviewImage extends StatelessWidget {
  final String imagePath;

  final String percentageDiscount;

  const FilledPreviewImage(
      {super.key, required this.imagePath, required this.percentageDiscount});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromRGBO(207, 2, 33, 1),
            borderRadius: BorderRadius.all(Radius.circular(22))),
        height: 50,
        child: Row(
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 36, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: percentageDiscount,
                        style: const TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        children: const [
                          TextSpan(
                            text: '\nToday Special \n',
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Get discount for every order. Only valid today.',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(22),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
