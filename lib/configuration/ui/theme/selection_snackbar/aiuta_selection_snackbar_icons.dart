import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_selection_snackbar_icons.g.dart';

/// Configuration for the icons used in the selection snackbar.
sealed class AiutaSelectionSnackbarIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaSelectionSnackbarIcons] with the specified [type].
  AiutaSelectionSnackbarIcons(this.type);

  // Internal json staff
  factory AiutaSelectionSnackbarIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaSelectionSnackbarIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaSelectionSnackbarIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown selection snackbar icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaSelectionSnackbarIcons`.
///
/// This class represents the default, built-in icons for the selection snackbar.
@JsonSerializable()
class AiutaSelectionSnackbarIconsBuiltIn extends AiutaSelectionSnackbarIcons {
  /// Creates an instance of the built-in selection snackbar icons.
  AiutaSelectionSnackbarIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaSelectionSnackbarIconsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaSelectionSnackbarIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaSelectionSnackbarIcons`.
///
/// This class allows for custom icons to be provided for the selection snackbar.
@JsonSerializable()
class AiutaSelectionSnackbarIconsCustom extends AiutaSelectionSnackbarIcons {
  /// Trash icon with size 24.
  final AiutaIcon trash24;

  /// Check icon with size 20.
  final AiutaIcon check20;

  /// Creates an [AiutaSelectionSnackbarIconsCustom] with the given [trash24]
  /// for deleting items and [check20] for selecting items in the lists.
  AiutaSelectionSnackbarIconsCustom({
    required this.trash24,
    required this.check20,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaSelectionSnackbarIconsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaSelectionSnackbarIconsCustomToJson(this);
}
