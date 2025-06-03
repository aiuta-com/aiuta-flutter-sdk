import 'package:json_annotation/json_annotation.dart';

part 'aiuta_selection_snackbar_colors.g.dart';

/// Color configuration for the selection snackbar.
@JsonSerializable()
class AiutaSelectionSnackbarColors {
  /// Background color for the selection snackbar.
  final String selectionBackground;

  /// Creates an [AiutaSelectionSnackbarColors] with the [selectionBackground] color.
  AiutaSelectionSnackbarColors({
    required this.selectionBackground,
  });

  /// Creates a built-in selection snackbar colors configuration with default settings.
  factory AiutaSelectionSnackbarColors.builtIn() {
    return AiutaSelectionSnackbarColors(
      selectionBackground: "#FF000000",
    );
  }

  // Internal json staff
  factory AiutaSelectionSnackbarColors.fromJson(Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarColorsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaSelectionSnackbarColorsToJson(this);
}
