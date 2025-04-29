import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_error_snackbar_theme.g.dart';

/// Configuration for the error snackbar theme.
@JsonSerializable()
class AiutaErrorSnackbarTheme {
  /// Strings configuration for the error snackbar.
  final AiutaErrorSnackbarStrings strings;

  /// Icons configuration for the error snackbar.
  final AiutaErrorSnackbarIcons icons;

  /// Colors configuration for the error snackbar.
  final AiutaErrorSnackbarColors colors;

  /// Creates an [AiutaErrorSnackbarTheme] with [strings], [icons], and [colors].
  AiutaErrorSnackbarTheme({
    required this.strings,
    required this.icons,
    required this.colors,
  });

  // Internal json staff
  factory AiutaErrorSnackbarTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaErrorSnackbarThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaErrorSnackbarThemeToJson(this);
}
