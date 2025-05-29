import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_error_snackbar_icons.g.dart';

/// Icons configuration for the error snackbar.
sealed class AiutaErrorSnackbarIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaErrorSnackbarIcons] with the specified [type].
  AiutaErrorSnackbarIcons(this.type);

  // Internal json staff
  factory AiutaErrorSnackbarIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaErrorSnackbarIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaErrorSnackbarIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown error snackbar icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaErrorSnackbarIcons`.
///
/// This class represents the default, built-in icons for the error snackbar feature.
@JsonSerializable()
class AiutaErrorSnackbarIconsBuiltIn extends AiutaErrorSnackbarIcons {
  /// Creates an instance of the built-in error snackbar icons.
  AiutaErrorSnackbarIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaErrorSnackbarIconsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaErrorSnackbarIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaErrorSnackbarIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaErrorSnackbarIcons`.
///
/// This class allows for custom icons to be provided for the error snackbar feature.
@JsonSerializable()
class AiutaErrorSnackbarIconsCustom extends AiutaErrorSnackbarIcons {
  /// Icon for the error.
  final AiutaIcon error36;

  /// Creates an [AiutaErrorSnackbarIconsCustom] with the [error36] icon.
  AiutaErrorSnackbarIconsCustom({
    required this.error36,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaErrorSnackbarIconsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaErrorSnackbarIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaErrorSnackbarIconsCustomToJson(this);
}
