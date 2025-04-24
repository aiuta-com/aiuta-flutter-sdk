import 'package:json_annotation/json_annotation.dart';

part 'aiuta_bottom_sheet_toggles.g.dart';

@JsonSerializable()
class AiutaBottomSheetToggles {
  /// Whether to extend delimiters to the right.
  final bool extendDelimitersToTheRight;

  /// Whether to extend delimiters to the left.
  final bool extendDelimitersToTheLeft;

  AiutaBottomSheetToggles({
    required this.extendDelimitersToTheRight,
    required this.extendDelimitersToTheLeft,
  });

  /// Create a new instance of AiutaBottomSheetToggles from a json map.
  factory AiutaBottomSheetToggles.fromJson(Map<String, dynamic> json) =>
      _$AiutaBottomSheetTogglesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaBottomSheetTogglesToJson(this);
}