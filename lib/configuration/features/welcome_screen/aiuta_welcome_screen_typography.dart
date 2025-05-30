import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_welcome_screen_typography.g.dart';

/// This class represents the typography styles used in the welcome screen
/// of the Aiuta SDK.
sealed class AiutaWelcomeScreenTypography {
  /// The type of the typography, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaWelcomeScreenTypography] with the specified [type].
  AiutaWelcomeScreenTypography(this.type);

  // Internal json staff
  factory AiutaWelcomeScreenTypography.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaWelcomeScreenTypographyBuiltIn.fromJson(json);
      case 'custom':
        return AiutaWelcomeScreenTypographyCustom.fromJson(json);
      default:
        throw Exception('Unknown welcome screen typography type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaWelcomeScreenTypography`.
///
/// This class represents the default, built-in typography for the welcome screen.
/// It does not require any custom implementation and uses predefined styles.
@JsonSerializable()
class AiutaWelcomeScreenTypographyBuiltIn extends AiutaWelcomeScreenTypography {
  /// Creates an instance of the built-in welcome screen typography.
  AiutaWelcomeScreenTypographyBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaWelcomeScreenTypographyBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenTypographyBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaWelcomeScreenTypographyBuiltInToJson(this);
}

/// A custom implementation of the `AiutaWelcomeScreenTypography`.
///
/// This class allows for custom typography styles to be defined for the welcome screen.
@JsonSerializable()
class AiutaWelcomeScreenTypographyCustom extends AiutaWelcomeScreenTypography {
  /// Text style for the welcome title.
  final AiutaTextStyle welcomeTitle;

  /// Text style for the welcome description.
  final AiutaTextStyle welcomeDescription;

  /// Creates an [AiutaWelcomeScreenTypographyCustom] with the given parameters for
  /// the [welcomeTitle] and [welcomeDescription] text styles.
  AiutaWelcomeScreenTypographyCustom({
    required this.welcomeTitle,
    required this.welcomeDescription,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaWelcomeScreenTypographyCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenTypographyCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaWelcomeScreenTypographyCustomToJson(this);
}
