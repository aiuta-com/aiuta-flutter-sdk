import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_button_typography.g.dart';

/// Defines the typography styles for buttons in the Aiuta UI.
sealed class AiutaButtonTypography {
  /// The type of the typography, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaButtonTypography] with the specified [type].
  AiutaButtonTypography(this.type);

  // Internal json staff
  factory AiutaButtonTypography.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaButtonTypographyBuiltIn.fromJson(json);
      case 'custom':
        return AiutaButtonTypographyCustom.fromJson(json);
      default:
        throw Exception('Unknown button typography type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaButtonTypography`.
///
/// This class represents the default, built-in typography for buttons.
/// It does not require any custom implementation and uses predefined styles.
@JsonSerializable()
class AiutaButtonTypographyBuiltIn extends AiutaButtonTypography {
  /// Creates an instance of the built-in button typography.
  AiutaButtonTypographyBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaButtonTypographyBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaButtonTypographyBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaButtonTypographyBuiltInToJson(this);
}

/// A custom implementation of the `AiutaButtonTypography`.
///
/// This class allows for custom typography styles to be defined for buttons.
@JsonSerializable()
class AiutaButtonTypographyCustom extends AiutaButtonTypography {
  /// Medium button text style.
  final AiutaTextStyle buttonM;

  /// Small button text style.
  final AiutaTextStyle buttonS;

  /// Creates an [AiutaButtonTypographyCustom] with the specified [buttonM]
  /// and [buttonS] text styles.
  AiutaButtonTypographyCustom({
    required this.buttonM,
    required this.buttonS,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaButtonTypographyCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaButtonTypographyCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaButtonTypographyCustomToJson(this);
}
