import 'package:json_annotation/json_annotation.dart';

part 'aiuta_error_snackbar_strings.g.dart';

/// Strings configuration for the error snackbar.
@JsonSerializable()
class AiutaErrorSnackbarStrings {
  /// Default error message.
  final String defaultErrorMessage;

  /// Text for the "Try Again" button.
  final String tryAgainButton;

  /// Creates an [AiutaErrorSnackbarStrings] with
  /// [defaultErrorMessage] and [tryAgainButton].
  AiutaErrorSnackbarStrings({
    required this.defaultErrorMessage,
    required this.tryAgainButton,
  });

  // Internal json staff
  factory AiutaErrorSnackbarStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaErrorSnackbarStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaErrorSnackbarStringsToJson(this);
}
