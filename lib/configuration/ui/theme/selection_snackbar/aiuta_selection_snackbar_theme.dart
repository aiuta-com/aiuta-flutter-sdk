import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_selection_snackbar_theme.g.dart';

/// Configuration for the selection snackbar that is embeds inside the
/// pages with the lists of some items (like the generations history),
/// allows to select multiple items and perform actions on them.
@JsonSerializable()
class AiutaSelectionSnackbarTheme {
  /// String configurations for the selection snackbar.
  final AiutaSelectionSnackbarStrings strings;

  /// Icon configurations for the selection snackbar.
  final AiutaSelectionSnackbarIcons icons;

  /// Color configurations for the selection snackbar.
  final AiutaSelectionSnackbarColors colors;

  /// Creates an [AiutaSelectionSnackbarTheme] with the given [strings],
  /// [icons], and [colors].
  AiutaSelectionSnackbarTheme({
    required this.strings,
    required this.icons,
    required this.colors,
  });

  // Internal json staff
  factory AiutaSelectionSnackbarTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaSelectionSnackbarThemeToJson(this);
}
