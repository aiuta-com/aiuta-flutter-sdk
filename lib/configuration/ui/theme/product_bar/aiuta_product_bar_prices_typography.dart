import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_prices_typography.g.dart';

@JsonSerializable()
class AiutaProductBarPricesTypography {
  /// Price text style.
  final AiutaTextStyle price;

  AiutaProductBarPricesTypography({
    required this.price,
  });

  /// Create a new instance of AiutaProductBarPricesTypography from a json map.
  factory AiutaProductBarPricesTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarPricesTypographyFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaProductBarPricesTypographyToJson(this);
}