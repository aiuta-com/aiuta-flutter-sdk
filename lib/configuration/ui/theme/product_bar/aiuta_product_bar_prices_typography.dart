import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_prices_typography.g.dart';

/// Typography styles for the product bar prices.
@JsonSerializable()
class AiutaProductBarPricesTypography {
  /// Price text style.
  final AiutaTextStyle price;

  /// Creates an [AiutaProductBarPricesTypography] with [price] text style.
  AiutaProductBarPricesTypography({
    required this.price,
  });

  // Internal json staff
  factory AiutaProductBarPricesTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarPricesTypographyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaProductBarPricesTypographyToJson(this);
}
