import 'package:json_annotation/json_annotation.dart';

part 'aiuta_bottom_sheet_shapes.g.dart';

@JsonSerializable()
class AiutaBottomSheetShapes {
  /// Bottom sheet shape.
  final double bottomSheet;

  /// Chips button shape.
  final double chipsButton;

  AiutaBottomSheetShapes({
    required this.bottomSheet,
    required this.chipsButton,
  });

  /// Create a new instance of AiutaBottomSheetShapes from a json map.
  factory AiutaBottomSheetShapes.fromJson(Map<String, dynamic> json) =>
      _$AiutaBottomSheetShapesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaBottomSheetShapesToJson(this);
}