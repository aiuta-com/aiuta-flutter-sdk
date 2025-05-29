import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_error_snackbar_strings.g.dart';

/// Strings configuration for the error snackbar.
sealed class AiutaErrorSnackbarStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaErrorSnackbarStrings] with the specified [type].
  AiutaErrorSnackbarStrings(this.type);

  // Internal json staff
  factory AiutaErrorSnackbarStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaErrorSnackbarStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaErrorSnackbarStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown error snackbar strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaErrorSnackbarStrings`.
///
/// This class represents the default, built-in strings for the error snackbar feature.
@JsonSerializable()
class AiutaErrorSnackbarStringsBuiltIn extends AiutaErrorSnackbarStrings {
  /// Creates an instance of the built-in error snackbar strings.
  AiutaErrorSnackbarStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaErrorSnackbarStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaErrorSnackbarStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaErrorSnackbarStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaErrorSnackbarStrings`.
///
/// This class allows for custom strings to be provided for the error snackbar feature.
@JsonSerializable()
class AiutaErrorSnackbarStringsCustom extends AiutaErrorSnackbarStrings {
  /// Default error message.
  final String defaultErrorMessage;

  /// Text for the "Try Again" button.
  final String tryAgainButton;

  /// Creates an [AiutaErrorSnackbarStringsCustom] with
  /// [defaultErrorMessage] and [tryAgainButton].
  AiutaErrorSnackbarStringsCustom({
    required this.defaultErrorMessage,
    required this.tryAgainButton,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaErrorSnackbarStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaErrorSnackbarStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaErrorSnackbarStringsCustomToJson(this);
}
