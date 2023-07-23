import 'package:json_annotation/json_annotation.dart';

part 'top_brand_details.g.dart';

@JsonSerializable()
class TopBrandDetails {
  @JsonKey(name: 'brandName')
  String brandName;
  @JsonKey(name: 'imagePath')
  String imagePath;

  TopBrandDetails({
    required this.brandName,
    required this.imagePath,
  });

  factory TopBrandDetails.fromJson(Map<String, dynamic> json) =>
      _$TopBrandDetailsFromJson(json);
}
