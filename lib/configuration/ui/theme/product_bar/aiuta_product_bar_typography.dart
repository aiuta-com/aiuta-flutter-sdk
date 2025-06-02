import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_typography.g.dart';

/// Configuration for the product bar typography that shows the product info.
sealed class AiutaProductBarTypography {
  /// The type of the typography, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaProductBarTypography] with the specified [type].
  AiutaProductBarTypography(this.type);

  // Internal json staff
  factory AiutaProductBarTypography.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaProductBarTypographyBuiltIn.fromJson(json);
      case 'custom':
        return AiutaProductBarTypographyCustom.fromJson(json);
      default:
        throw Exception('Unknown product bar typography type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaProductBarTypography`.
///
/// This class represents the default, built-in typography for the product bar.
/// It does not require any custom implementation and uses predefined styles.
@JsonSerializable()
class AiutaProductBarTypographyBuiltIn extends AiutaProductBarTypography {
  /// Creates an instance of the built-in product bar typography.
  AiutaProductBarTypographyBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaProductBarTypographyBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaProductBarTypographyBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaProductBarTypographyBuiltInToJson(this);
}

/// A custom implementation of the `AiutaProductBarTypography`.
///
/// This class allows for custom typography styles to be defined for the product bar.
@JsonSerializable()
class AiutaProductBarTypographyCustom extends AiutaProductBarTypography {
  /// Product text style.
  final AiutaTextStyle product;

  /// Brand text style.
  final AiutaTextStyle brand;

  /// Creates an [AiutaProductBarTypographyCustom] with required [product] title and
  /// [brand] name text styles.
  AiutaProductBarTypographyCustom({
    required this.product,
    required this.brand,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaProductBarTypographyCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarTypographyCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaProductBarTypographyCustomToJson(this);
}
