import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_page_bar_typography.g.dart';

/// Configuration for the page bar typography.
sealed class AiutaPageBarTypography {
  /// The type of the typography, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaPageBarTypography] with the specified [type].
  AiutaPageBarTypography(this.type);

  // Internal json staff
  factory AiutaPageBarTypography.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaPageBarTypographyBuiltIn.fromJson(json);
      case 'custom':
        return AiutaPageBarTypographyCustom.fromJson(json);
      default:
        throw Exception('Unknown page bar typography type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaPageBarTypography`.
///
/// This class represents the default, built-in typography for the page bar.
/// It does not require any custom implementation and uses predefined styles.
@JsonSerializable()
class AiutaPageBarTypographyBuiltIn extends AiutaPageBarTypography {
  /// Creates an instance of the built-in page bar typography.
  AiutaPageBarTypographyBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaPageBarTypographyBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaPageBarTypographyBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaPageBarTypographyBuiltInToJson(this);
}

/// A custom implementation of the `AiutaPageBarTypography`.
///
/// This class allows for custom typography styles to be defined for the page bar.
@JsonSerializable()
class AiutaPageBarTypographyCustom extends AiutaPageBarTypography {
  /// Page title text style.
  final AiutaTextStyle pageTitle;

  /// Creates an [AiutaPageBarTypographyCustom] with [pageTitle] text style.
  AiutaPageBarTypographyCustom({
    required this.pageTitle,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaPageBarTypographyCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaPageBarTypographyCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaPageBarTypographyCustomToJson(this);
}
