import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_error_snackbar_icons.g.dart';

/// Icons configuration for the error snackbar.
@JsonSerializable()
class AiutaErrorSnackbarIcons {
  /// Icon for the error.
  final AiutaIcon error36;

  /// Creates an [AiutaErrorSnackbarIcons] with the [error36] icon.
  AiutaErrorSnackbarIcons({
    required this.error36,
  });

  // Internal json staff
  factory AiutaErrorSnackbarIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaErrorSnackbarIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaErrorSnackbarIconsToJson(this);
}
