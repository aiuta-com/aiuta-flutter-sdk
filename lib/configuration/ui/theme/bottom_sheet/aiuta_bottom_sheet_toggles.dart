import 'package:json_annotation/json_annotation.dart';

part 'aiuta_bottom_sheet_toggles.g.dart';

/// A class representing the toggles for the Aiuta bottom sheet.
@JsonSerializable()
class AiutaBottomSheetToggles {
  /// Whether to extend delimiters to the right.
  final bool extendDelimitersToTheRight;

  /// Whether to extend delimiters to the left.
  final bool extendDelimitersToTheLeft;

  /// Creates an [AiutaBottomSheetToggles] with options for extending delimiters.
  AiutaBottomSheetToggles({
    required this.extendDelimitersToTheRight,
    required this.extendDelimitersToTheLeft,
  });

  /// Creates a built-in bottom sheet toggles configuration with default settings.
  factory AiutaBottomSheetToggles.builtIn() {
    return AiutaBottomSheetToggles(
      extendDelimitersToTheRight: false,
      extendDelimitersToTheLeft: false,
    );
  }

  // Internal json staff
  factory AiutaBottomSheetToggles.fromJson(Map<String, dynamic> json) =>
      _$AiutaBottomSheetTogglesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaBottomSheetTogglesToJson(this);
}
