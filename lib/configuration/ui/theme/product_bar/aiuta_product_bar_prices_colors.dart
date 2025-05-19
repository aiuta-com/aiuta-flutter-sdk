import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_prices_colors.g.dart';

/// Color configurations for the product bar to show the product prices.
@JsonSerializable()
class AiutaProductBarPricesColors {
  /// Color for discounted prices.
  final String discountedPrice;

  /// Creates an [AiutaProductBarPricesColors] with required [discountedPrice]
  /// for the color of discounted prices.
  AiutaProductBarPricesColors({
    required this.discountedPrice,
  });

  // Internal json staff
  factory AiutaProductBarPricesColors.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarPricesColorsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaProductBarPricesColorsToJson(this);
}
