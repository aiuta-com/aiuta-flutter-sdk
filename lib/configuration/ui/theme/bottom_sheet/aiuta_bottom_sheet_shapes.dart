import 'package:json_annotation/json_annotation.dart';

part 'aiuta_bottom_sheet_shapes.g.dart';

/// This class defines the shapes used in the bottom sheet
/// and chips button inside the bottom sheet.
@JsonSerializable()
class AiutaBottomSheetShapes {
  /// Bottom sheet shape.
  final double bottomSheet;

  /// Chips button shape.
  final double chipsButton;

  /// Creates an [AiutaBottomSheetShapes] instance with the given
  /// [bottomSheet] and [chipsButton] radius values.
  AiutaBottomSheetShapes({
    required this.bottomSheet,
    required this.chipsButton,
  });

  // Internal json staff
  factory AiutaBottomSheetShapes.fromJson(Map<String, dynamic> json) =>
      _$AiutaBottomSheetShapesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaBottomSheetShapesToJson(this);
}
