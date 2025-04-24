import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_typography.g.dart';

@JsonSerializable()
class AiutaProductBarTypography {
  /// Product text style.
  final AiutaTextStyle product;

  /// Brand text style.
  final AiutaTextStyle brand;

  /// Price text style.
  final AiutaTextStyle price;

  AiutaProductBarTypography({
    required this.product,
    required this.brand,
    required this.price,
  });

  /// Create a new instance of AiutaProductBarTypography from a json map.
  factory AiutaProductBarTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarTypographyFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaProductBarTypographyToJson(this);
}