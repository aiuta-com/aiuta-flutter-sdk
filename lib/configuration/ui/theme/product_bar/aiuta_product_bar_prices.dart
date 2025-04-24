import 'package:json_annotation/json_annotation.dart';
import 'aiuta_product_bar_prices_typography.dart';
import 'aiuta_product_bar_prices_colors.dart';

part 'aiuta_product_bar_prices.g.dart';

@JsonSerializable()
class AiutaProductBarPrices {
  /// Typography styles for prices.
  final AiutaProductBarPricesTypography typography;

  /// Color configurations for discounted prices.
  final AiutaProductBarPricesColors colors;

  AiutaProductBarPrices({
    required this.typography,
    required this.colors,
  });

  /// Create a new instance of AiutaProductBarPrices from a json map.
  factory AiutaProductBarPrices.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarPricesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaProductBarPricesToJson(this);
}