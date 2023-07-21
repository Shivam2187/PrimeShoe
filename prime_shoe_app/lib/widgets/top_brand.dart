import 'package:flutter/material.dart';

class TopBrand extends StatelessWidget {
  const TopBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 30,
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        TopBrandWidget(imagePath: 'assets/brand/nike.png', brandName: 'Nike'),
        TopBrandWidget(imagePath: 'assets/brand/puma.png', brandName: 'Puma'),
        TopBrandWidget(
            imagePath: 'assets/brand/adidas.png', brandName: 'Adidas'),
        TopBrandWidget(imagePath: 'assets/brand/vans.png', brandName: 'Vans'),
        TopBrandWidget(
            imagePath: 'assets/brand/redTape.png', brandName: 'Red Tape'),
        TopBrandWidget(imagePath: 'assets/brand/fila.png', brandName: 'Fila'),
        TopBrandWidget(
            imagePath: 'assets/brand/underArmer.png', brandName: 'Under Armer'),
        TopBrandWidget(
            imagePath: 'assets/brand/redTape.png', brandName: 'Red Tape'),
      ],
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
      children: [
        SizedBox(
          width: 57,
          height: 57,
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
        const SizedBox(
          height: 6,
        ),
        Text(
          brandName,
          style: const TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
