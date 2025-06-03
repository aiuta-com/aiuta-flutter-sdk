import 'package:json_annotation/json_annotation.dart';

part 'aiuta_error_snackbar_colors.g.dart';

/// Colors configuration for the error snackbar.
@JsonSerializable()
class AiutaErrorSnackbarColors {
  /// Background color for the error snackbar.
  final String errorBackground;

  /// Primary color for the error snackbar.
  final String errorPrimary;

  /// Creates an [AiutaErrorSnackbarColors] with [errorBackground] and
  /// [errorPrimary] colors.
  AiutaErrorSnackbarColors({
    required this.errorBackground,
    required this.errorPrimary,
  });

  /// Creates a built-in error snackbar colors configuration with default settings.
  factory AiutaErrorSnackbarColors.builtIn() {
    return AiutaErrorSnackbarColors(
      errorBackground: "#FFFFF5F5",
      errorPrimary: "#FF000000",
    );
  }

  // Internal json staff
  factory AiutaErrorSnackbarColors.fromJson(Map<String, dynamic> json) =>
      _$AiutaErrorSnackbarColorsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaErrorSnackbarColorsToJson(this);
}
