import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_selection_snackbar_strings.g.dart';

/// Strings for the selection snackbar.
sealed class AiutaSelectionSnackbarStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaSelectionSnackbarStrings] with the specified [type].
  AiutaSelectionSnackbarStrings(this.type);

  // Internal json staff
  factory AiutaSelectionSnackbarStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaSelectionSnackbarStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaSelectionSnackbarStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown selection snackbar strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaSelectionSnackbarStrings`.
///
/// This class represents the default, built-in strings for the selection snackbar feature.
@JsonSerializable()
class AiutaSelectionSnackbarStringsBuiltIn
    extends AiutaSelectionSnackbarStrings {
  /// Creates an instance of the built-in selection snackbar strings.
  AiutaSelectionSnackbarStringsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaSelectionSnackbarStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaSelectionSnackbarStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaSelectionSnackbarStrings`.
///
/// This class allows for custom strings to be provided for the selection snackbar feature.
@JsonSerializable()
class AiutaSelectionSnackbarStringsCustom
    extends AiutaSelectionSnackbarStrings {
  /// "Select" string.
  final String select;

  /// "Cancel" string.
  final String cancel;

  /// "Select All" string.
  final String selectAll;

  /// "Unselect All" string.
  final String unselectAll;

  /// Creates an [AiutaSelectionSnackbarStringsCustom] with the given [select],
  /// [cancel], [selectAll], and [unselectAll] strings.
  AiutaSelectionSnackbarStringsCustom({
    required this.select,
    required this.cancel,
    required this.selectAll,
    required this.unselectAll,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaSelectionSnackbarStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaSelectionSnackbarStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaSelectionSnackbarStringsCustomToJson(this);
}
