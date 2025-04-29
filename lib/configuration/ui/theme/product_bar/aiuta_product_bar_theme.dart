import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_prices.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_icons.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_theme.g.dart';

/// Configuration for the product bar that shows the product information
/// passed to the Aiuta SDK for virtual try-on. It may appear in the
/// image picker and on the generation results page.
@JsonSerializable()
class AiutaProductBarTheme {
  /// Price configurations for the product bar.
  final AiutaProductBarPrices? prices;

  /// Typography styles for the product bar.
  final AiutaProductBarTypography typography;

  /// Icon configurations for the product bar.
  final AiutaProductBarIcons icons;

  /// Toggle configurations for the product bar.
  final AiutaProductBarToggles toggles;

  /// Creates an [AiutaProductBarTheme] with optional [prices] configuration to
  /// display prices, required [typography] for text styles, [icons] for icon
  /// configurations, and [toggles] for the fine-tuning of the product bar.
  AiutaProductBarTheme({
    this.prices,
    required this.typography,
    required this.icons,
    required this.toggles,
  });

  // Internal json staff
  factory AiutaProductBarTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaProductBarThemeToJson(this);
}
