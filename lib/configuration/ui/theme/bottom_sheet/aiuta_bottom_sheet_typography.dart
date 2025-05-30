import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_bottom_sheet_typography.g.dart';

/// This class defines the typography styles for the bottom sheet component.
sealed class AiutaBottomSheetTypography {
  /// The type of the typography, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaBottomSheetTypography] with the specified [type].
  AiutaBottomSheetTypography(this.type);

  // Internal json staff
  factory AiutaBottomSheetTypography.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaBottomSheetTypographyBuiltIn.fromJson(json);
      case 'custom':
        return AiutaBottomSheetTypographyCustom.fromJson(json);
      default:
        throw Exception('Unknown bottom sheet typography type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaBottomSheetTypography`.
///
/// This class represents the default, built-in typography for the bottom sheet.
/// It does not require any custom implementation and uses predefined styles.
@JsonSerializable()
class AiutaBottomSheetTypographyBuiltIn extends AiutaBottomSheetTypography {
  /// Creates an instance of the built-in bottom sheet typography.
  AiutaBottomSheetTypographyBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaBottomSheetTypographyBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaBottomSheetTypographyBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaBottomSheetTypographyBuiltInToJson(this);
}

/// A custom implementation of the `AiutaBottomSheetTypography`.
///
/// This class allows for custom typography styles to be defined for the bottom sheet.
@JsonSerializable()
class AiutaBottomSheetTypographyCustom extends AiutaBottomSheetTypography {
  /// Icon button text style.
  /// For example, the text style for the list of sources to get a photo in the image picker.
  final AiutaTextStyle iconButton;

  /// Chips button text style.
  /// For example, the text style for the list of user feedback options.
  final AiutaTextStyle chipsButton;

  /// Creates an [AiutaBottomSheetTypographyCustom] instance with the given text styles
  /// for the [iconButton] and [chipsButton].
  AiutaBottomSheetTypographyCustom({
    required this.iconButton,
    required this.chipsButton,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaBottomSheetTypographyCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaBottomSheetTypographyCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaBottomSheetTypographyCustomToJson(this);
}
