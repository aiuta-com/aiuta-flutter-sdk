import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_bottom_sheet_typography.g.dart';

@JsonSerializable()
class AiutaBottomSheetTypography {
  /// Icon button text style.
  final AiutaTextStyle iconButton;

  /// Chips button text style.
  final AiutaTextStyle chipsButton;

  AiutaBottomSheetTypography({
    required this.iconButton,
    required this.chipsButton,
  });

  /// Create a new instance of AiutaBottomSheetTypography from a json map.
  factory AiutaBottomSheetTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaBottomSheetTypographyFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaBottomSheetTypographyToJson(this);
}