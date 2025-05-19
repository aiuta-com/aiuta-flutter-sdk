import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_bottom_sheet_typography.g.dart';

/// This class defines the typography styles for the bottom sheet component.
@JsonSerializable()
class AiutaBottomSheetTypography {
  /// Icon button text style.
  /// For example, the text style for the list of sources to get a photo in the image picker.
  final AiutaTextStyle iconButton;

  /// Chips button text style.
  /// For example, the text style for the list of user feedback options.
  final AiutaTextStyle chipsButton;

  /// Creates an [AiutaBottomSheetTypography] instance with the given text styles
  /// for the [iconButton] and [chipsButton].
  AiutaBottomSheetTypography({
    required this.iconButton,
    required this.chipsButton,
  });

  // Internal json staff
  factory AiutaBottomSheetTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaBottomSheetTypographyFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaBottomSheetTypographyToJson(this);
}
