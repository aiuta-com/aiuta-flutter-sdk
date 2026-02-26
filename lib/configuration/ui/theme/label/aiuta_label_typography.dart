import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_label_typography.g.dart';

/// This contains the typography styles for labels.
sealed class AiutaLabelTypography {
  /// The type of the typography, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaLabelTypography] with the specified [type].
  AiutaLabelTypography(this.type);

  // Internal json staff
  factory AiutaLabelTypography.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaLabelTypographyBuiltIn.fromJson(json);
      case 'custom':
        return AiutaLabelTypographyCustom.fromJson(json);
      default:
        throw Exception('Unknown label typography type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaLabelTypography`.
///
/// This class represents the default, built-in typography for labels.
/// It does not require any custom implementation and uses predefined styles.
@JsonSerializable()
class AiutaLabelTypographyBuiltIn extends AiutaLabelTypography {
  /// Creates an instance of the built-in label typography.
  AiutaLabelTypographyBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaLabelTypographyBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaLabelTypographyBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaLabelTypographyBuiltInToJson(this);
}

/// A custom implementation of the `AiutaLabelTypography`.
///
/// This class allows for custom typography styles to be defined for labels.
@JsonSerializable()
class AiutaLabelTypographyCustom extends AiutaLabelTypography {
  /// Large title text style.
  final AiutaTextStyle titleL;

  /// Medium title text style.
  final AiutaTextStyle titleM;

  /// Regular text style.
  final AiutaTextStyle regular;

  /// Subtle text style.
  final AiutaTextStyle subtle;

  /// Subtle text style.
  final AiutaTextStyle footnote;

  /// Creates an [AiutaLabelTypographyCustom] with the given text styles.
  AiutaLabelTypographyCustom({
    required this.titleL,
    required this.titleM,
    required this.regular,
    required this.subtle,
    required this.footnote,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaLabelTypographyCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaLabelTypographyCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaLabelTypographyCustomToJson(this);
}
