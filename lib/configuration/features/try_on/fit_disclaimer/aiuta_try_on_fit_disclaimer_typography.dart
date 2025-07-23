import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_fit_disclaimer_typography.g.dart';

/// This class represents the typography styles used in the welcome screen
/// of the Aiuta SDK.
sealed class AiutaTryOnFitDisclaimerTypography {
  /// The type of the typography, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaWelcomeScreenTypography] with the specified [type].
  AiutaTryOnFitDisclaimerTypography(this.type);

  // Internal json staff
  factory AiutaTryOnFitDisclaimerTypography.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnFitDisclaimerTypographyBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnFitDisclaimerTypographyCustom.fromJson(json);
      default:
        throw Exception('Unknown fit disclaimer typography type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnFitDisclaimerTypography`.
///
/// This class represents the default, built-in typography for the  fit disclaimer.
/// It does not require any custom implementation and uses predefined styles.
@JsonSerializable()
class AiutaTryOnFitDisclaimerTypographyBuiltIn
    extends AiutaTryOnFitDisclaimerTypography {
  /// Creates an instance of the built-in welcome screen typography.
  AiutaTryOnFitDisclaimerTypographyBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnFitDisclaimerTypographyBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnFitDisclaimerTypographyBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnFitDisclaimerTypographyBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnFitDisclaimerTypography`.
///
/// This class allows for custom typography styles to be defined for the fit disclaimer.
@JsonSerializable()
class AiutaTryOnFitDisclaimerTypographyCustom
    extends AiutaTryOnFitDisclaimerTypography {
  /// Text style for the fit disclaimer.
  final AiutaTextStyle disclaimer;

  /// Creates an [AiutaTryOnFitDisclaimerTypographyCustom] with the given parameters for
  /// the [disclaimer] text styles.
  AiutaTryOnFitDisclaimerTypographyCustom({
    required this.disclaimer,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnFitDisclaimerTypographyCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnFitDisclaimerTypographyCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnFitDisclaimerTypographyCustomToJson(this);
}
