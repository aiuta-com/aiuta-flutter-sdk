import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_grabber.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_shapes.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_typography.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_bottom_sheet_theme.g.dart';

/// This class defines the theme for the bottom sheet component in the Aiuta UI
/// to display the SDK itself and its components.
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

  /// Creates an [AiutaBottomSheetTheme] instance with the specified
  /// [typography] text styles, [shapes] for the bottom sheet and its
  /// components, [grabber] configurations, and [toggles] for the bottom sheet.
  AiutaBottomSheetTheme({
    required this.typography,
    required this.shapes,
    required this.grabber,
    required this.toggles,
  });

  /// Creates a built-in bottom sheet theme configuration with default settings.
  factory AiutaBottomSheetTheme.builtIn() {
    return AiutaBottomSheetTheme(
      typography: AiutaBottomSheetTypographyBuiltIn(),
      shapes: AiutaBottomSheetShapes.builtIn(),
      grabber: AiutaBottomSheetGrabber.builtIn(),
      toggles: AiutaBottomSheetToggles.builtIn(),
    );
  }

  // Internal json staff
  factory AiutaBottomSheetTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaBottomSheetThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaBottomSheetThemeToJson(this);
}
