import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_typography.g.dart';

/// Configuration for the product bar typography that shows the product info.
@JsonSerializable()
class AiutaProductBarTypography {
  /// Product text style.
  final AiutaTextStyle product;

  /// Brand text style.
  final AiutaTextStyle brand;

  /// Creates an [AiutaProductBarTypography] with required [product] title and
  /// [brand] name text styles.
  AiutaProductBarTypography({
    required this.product,
    required this.brand,
  });

  // Internal json staff
  factory AiutaProductBarTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarTypographyFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaProductBarTypographyToJson(this);
}
