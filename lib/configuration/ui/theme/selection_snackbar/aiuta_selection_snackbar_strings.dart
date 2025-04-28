import 'package:json_annotation/json_annotation.dart';

part 'aiuta_selection_snackbar_strings.g.dart';

/// Strings for the selection snackbar.
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

  /// Creates an [AiutaSelectionSnackbarStrings] with the given [select],
  /// [cancel], [selectAll], and [unselectAll] strings.
  AiutaSelectionSnackbarStrings({
    required this.select,
    required this.cancel,
    required this.selectAll,
    required this.unselectAll,
  });

  // Internal json staff
  factory AiutaSelectionSnackbarStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaSelectionSnackbarStringsToJson(this);
}
