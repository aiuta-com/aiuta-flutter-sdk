import 'package:json_annotation/json_annotation.dart';
import 'aiuta_bottom_sheet_typography.dart';
import 'aiuta_bottom_sheet_shapes.dart';
import 'aiuta_bottom_sheet_grabber.dart';
import 'aiuta_bottom_sheet_toggles.dart';

part 'aiuta_bottom_sheet_theme.g.dart';

@JsonSerializable()
class AiutaBottomSheetTheme {
  /// Typography styles for the bottom sheet.
  final AiutaBottomSheetTypography typography;

  /// Shape configurations for the bottom sheet.
  final AiutaBottomSheetShapes shapes;

  /// Grabber configurations for the bottom sheet.
  final AiutaBottomSheetGrabber grabber;

  /// Toggle configurations for the bottom sheet.
  final AiutaBottomSheetToggles toggles;

  AiutaBottomSheetTheme({
    required this.typography,
    required this.shapes,
    required this.grabber,
    required this.toggles,
  });

  /// Create a new instance of AiutaBottomSheetTheme from a json map.
  factory AiutaBottomSheetTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaBottomSheetThemeFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaBottomSheetThemeToJson(this);
}