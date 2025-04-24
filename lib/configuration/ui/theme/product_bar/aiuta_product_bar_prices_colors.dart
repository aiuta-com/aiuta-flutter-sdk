import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/painting.dart';

part 'aiuta_product_bar_prices_colors.g.dart';

@JsonSerializable()
class AiutaProductBarPricesColors {
  /// Color for discounted prices.
  final String discountedPrice;

  AiutaProductBarPricesColors({
    required this.discountedPrice,
  });

  /// Create a new instance of AiutaProductBarPricesColors from a json map.
  factory AiutaProductBarPricesColors.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarPricesColorsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaProductBarPricesColorsToJson(this);
}
