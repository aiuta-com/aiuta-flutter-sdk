import 'package:json_annotation/json_annotation.dart';
import 'aiuta_product_bar_typography.dart';
import 'aiuta_product_bar_toggles.dart';
import 'aiuta_product_bar_prices.dart';

part 'aiuta_product_bar_theme.g.dart';

@JsonSerializable()
class AiutaProductBarTheme {
  /// Price configurations for the product bar.
  final AiutaProductBarPrices? prices;

  /// Typography styles for the product bar.
  final AiutaProductBarTypography typography;

  /// Toggle configurations for the product bar.
  final AiutaProductBarToggles toggles;

  AiutaProductBarTheme({
    this.prices,
    required this.typography,
    required this.toggles,
  });

  /// Create a new instance of AiutaProductBarTheme from a json map.
  factory AiutaProductBarTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarThemeFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaProductBarThemeToJson(this);
}
