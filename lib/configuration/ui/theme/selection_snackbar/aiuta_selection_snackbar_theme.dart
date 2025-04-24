import 'package:json_annotation/json_annotation.dart';
import 'aiuta_selection_snackbar_strings.dart';
import 'aiuta_selection_snackbar_icons.dart';
import 'aiuta_selection_snackbar_colors.dart';

part 'aiuta_selection_snackbar_theme.g.dart';

@JsonSerializable()
class AiutaSelectionSnackbarTheme {
  /// String configurations for the selection snackbar.
  final AiutaSelectionSnackbarStrings strings;

  /// Icon configurations for the selection snackbar.
  final AiutaSelectionSnackbarIcons icons;

  /// Color configurations for the selection snackbar.
  final AiutaSelectionSnackbarColors colors;

  AiutaSelectionSnackbarTheme({
    required this.strings,
    required this.icons,
    required this.colors,
  });

  /// Create a new instance of AiutaSelectionSnackbarTheme from a json map.
  factory AiutaSelectionSnackbarTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarThemeFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaSelectionSnackbarThemeToJson(this);
}