import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_prices_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_prices_typography.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_prices.g.dart';

/// Additional configuration for the product bar to show the product prices.
@JsonSerializable()
class AiutaProductBarPrices {
  /// Typography styles for prices.
  final AiutaProductBarPricesTypography typography;

  /// Color configurations for discounted prices.
  final AiutaProductBarPricesColors colors;

  /// Creates an [AiutaProductBarPrices] with required [typography] for text
  /// styles and [colors] for the color configurations.
  AiutaProductBarPrices({
    required this.typography,
    required this.colors,
  });

  // Internal json staff
  factory AiutaProductBarPrices.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarPricesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaProductBarPricesToJson(this);
}
