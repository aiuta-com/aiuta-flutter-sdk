import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/painting.dart';

part 'aiuta_selection_snackbar_colors.g.dart';

@JsonSerializable()
class AiutaSelectionSnackbarColors {
  /// Background color for the selection snackbar.
  final String selectionBackground;

  AiutaSelectionSnackbarColors({
    required this.selectionBackground,
  });

  /// Create a new instance of AiutaSelectionSnackbarColors from a json map.
  factory AiutaSelectionSnackbarColors.fromJson(Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarColorsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaSelectionSnackbarColorsToJson(this);
}