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

  // Internal json staff
  factory AiutaSelectionSnackbarColors.fromJson(Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarColorsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaSelectionSnackbarColorsToJson(this);
}
