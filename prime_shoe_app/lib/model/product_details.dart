import 'package:json_annotation/json_annotation.dart';

part 'product_details.g.dart';

@JsonSerializable()
class ProductDetails {
  @JsonKey(name: 'brandName')
  String brandName;
  @JsonKey(name: 'rating')
  num rating;
  @JsonKey(name: 'shoeType')
  String shoeType;
  @JsonKey(name: 'shoeColor')
  String shoeColor;
  @JsonKey(name: 'productPrice')
  num productPrice;
  @JsonKey(name: 'imagePath')
  String imagePath;

  ProductDetails({
    required this.brandName,
    required this.imagePath,
    required this.productPrice,
    required this.rating,
    required this.shoeColor,
    required this.shoeType,
  });

  factory ProductDetails.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsFromJson(json);
}
