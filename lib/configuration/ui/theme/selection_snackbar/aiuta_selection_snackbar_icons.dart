import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_selection_snackbar_icons.g.dart';

/// Configuration for the icons used in the selection snackbar.
@JsonSerializable()
class AiutaSelectionSnackbarIcons {
  /// Trash icon with size 24.
  final AiutaIcon trash24;

  /// Check icon with size 20.
  final AiutaIcon check20;

  /// Creates an [AiutaSelectionSnackbarIcons] with the given [trash24]
  /// for deleting items and [check20] for selecting items in the lists.
  AiutaSelectionSnackbarIcons({
    required this.trash24,
    required this.check20,
  });

  // Internal json staff
  factory AiutaSelectionSnackbarIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaSelectionSnackbarIconsToJson(this);
}
