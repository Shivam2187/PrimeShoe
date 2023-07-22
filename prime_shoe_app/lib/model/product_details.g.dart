// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetails _$ProductDetailsFromJson(Map<String, dynamic> json) =>
    ProductDetails(
      brandName: json['brandName'] as String,
      imagePath: json['imagePath'] as String,
      productPrice: (json['productPrice'] as num).toDouble(),
      rating: json['rating'] as num,
      shoeColor: json['shoeColor'] as String,
      shoeType: json['shoeType'] as String,
    );

// ignore: unused_element
Map<String, dynamic> _$ProductDetailsToJson(ProductDetails instance) =>
    <String, dynamic>{
      'brandName': instance.brandName,
      'rating': instance.rating,
      'shoeType': instance.shoeType,
      'shoeColor': instance.shoeColor,
      'productPrice': instance.productPrice,
      'imagePath': instance.imagePath,
    };
