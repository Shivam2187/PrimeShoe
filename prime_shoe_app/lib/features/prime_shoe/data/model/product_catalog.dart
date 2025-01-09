// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

import 'brand_type_details.dart';
import 'product_details.dart';

part 'product_catalog.g.dart';

@JsonSerializable()
class ProductCatalog {
  final List<ProductDetails> shoeDetailsList;
  final List<BrandTypeDetails> brandTypeDetailsList;
  ProductCatalog({
    required this.shoeDetailsList,
    required this.brandTypeDetailsList,
  });

  factory ProductCatalog.fromJson(Map<String, dynamic> json) =>
      _$ProductCatalogDTOFromJson(json);
}
