import 'package:aiuta_flutter/configuration/ui/theme/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_selection_snackbar_icons.g.dart';

@JsonSerializable()
class AiutaSelectionSnackbarIcons {
  /// Trash icon with size 24.
  final AiutaIcon trash24;

  /// Check icon with size 20.
  final AiutaIcon check20;

  AiutaSelectionSnackbarIcons({
    required this.trash24,
    required this.check20,
  });

  /// Create a new instance of AiutaSelectionSnackbarIcons from a json map.
  factory AiutaSelectionSnackbarIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaSelectionSnackbarIconsToJson(this);
}