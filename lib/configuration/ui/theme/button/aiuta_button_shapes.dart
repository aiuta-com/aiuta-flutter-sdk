import 'package:json_annotation/json_annotation.dart';

part 'aiuta_button_shapes.g.dart';

/// Defines the shape configurations for buttons in the Aiuta UI.
@JsonSerializable()
class AiutaButtonShapes {
  /// Medium button shape.
  final double buttonM;

  /// Small button shape.
  final double buttonS;

  /// Creates an [AiutaButtonShapes] with the specified [buttonM] and [buttonS]
  /// corner radius.
  AiutaButtonShapes({
    required this.buttonM,
    required this.buttonS,
  });

  /// Creates a built-in button shapes configuration with default settings.
  factory AiutaButtonShapes.builtIn() {
    return AiutaButtonShapes(
      buttonM: 8,
      buttonS: 8,
    );
  }

  // Internal json staff
  factory AiutaButtonShapes.fromJson(Map<String, dynamic> json) =>
      _$AiutaButtonShapesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaButtonShapesToJson(this);
}
