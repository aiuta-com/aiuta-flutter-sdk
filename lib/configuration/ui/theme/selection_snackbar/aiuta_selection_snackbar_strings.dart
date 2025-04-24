import 'package:json_annotation/json_annotation.dart';

part 'aiuta_selection_snackbar_strings.g.dart';

@JsonSerializable()
class AiutaSelectionSnackbarStrings {
  /// "Select" string.
  final String select;

  /// "Cancel" string.
  final String cancel;

  /// "Select All" string.
  final String selectAll;

  /// "Unselect All" string.
  final String unselectAll;

  AiutaSelectionSnackbarStrings({
    required this.select,
    required this.cancel,
    required this.selectAll,
    required this.unselectAll,
  });

  /// Create a new instance of AiutaSelectionSnackbarStrings from a json map.
  factory AiutaSelectionSnackbarStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaSelectionSnackbarStringsToJson(this);
}