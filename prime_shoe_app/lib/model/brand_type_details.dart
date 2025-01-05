import 'package:json_annotation/json_annotation.dart';

part 'brand_type_details.g.dart';

@JsonSerializable()
class BrandTypeDetails {
  @JsonKey(name: 'brandName')
  String brandName;
  @JsonKey(name: 'imagePath')
  String imagePath;

  BrandTypeDetails({
    required this.brandName,
    required this.imagePath,
  });

  factory BrandTypeDetails.fromJson(Map<String, dynamic> json) =>
      _$TopBrandDetailsFromJson(json);
}
