// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_catalog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCatalog _$ProductCatalogDTOFromJson(Map<String, dynamic> json) =>
    ProductCatalog(
      shoeDetailsList: (json['shoeDetailsList'] as List<dynamic>)
          .map((e) => ProductDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      brandTypeDetailsList: (json['brandTypeDetailsList'] as List<dynamic>)
          .map((e) => BrandTypeDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
