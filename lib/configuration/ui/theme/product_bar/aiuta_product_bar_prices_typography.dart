import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_prices_typography.g.dart';

/// Typography styles for the product bar prices.
sealed class AiutaProductBarPricesTypography {
  /// The type of the typography, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaProductBarPricesTypography] with the specified [type].
  AiutaProductBarPricesTypography(this.type);

  // Internal json staff
  factory AiutaProductBarPricesTypography.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaProductBarPricesTypographyBuiltIn.fromJson(json);
      case 'custom':
        return AiutaProductBarPricesTypographyCustom.fromJson(json);
      default:
        throw Exception('Unknown product bar prices typography type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaProductBarPricesTypography`.
///
/// This class represents the default, built-in typography for the product bar prices.
/// It does not require any custom implementation and uses predefined styles.
@JsonSerializable()
class AiutaProductBarPricesTypographyBuiltIn
    extends AiutaProductBarPricesTypography {
  /// Creates an instance of the built-in product bar prices typography.
  AiutaProductBarPricesTypographyBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaProductBarPricesTypographyBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaProductBarPricesTypographyBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaProductBarPricesTypographyBuiltInToJson(this);
}

/// A custom implementation of the `AiutaProductBarPricesTypography`.
///
/// This class allows for custom typography styles to be defined for the product bar prices.
@JsonSerializable()
class AiutaProductBarPricesTypographyCustom
    extends AiutaProductBarPricesTypography {
  /// Price text style.
  final AiutaTextStyle price;

  /// Creates an [AiutaProductBarPricesTypographyCustom] with [price] text style.
  AiutaProductBarPricesTypographyCustom({
    required this.price,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaProductBarPricesTypographyCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaProductBarPricesTypographyCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaProductBarPricesTypographyCustomToJson(this);
}
