import 'package:json_annotation/json_annotation.dart';

part 'aiuta_button_shapes.g.dart';

@JsonSerializable()
class AiutaButtonShapes {
  /// Medium button shape.
  final double buttonM;

  /// Small button shape.
  final double buttonS;

  AiutaButtonShapes({
    required this.buttonM,
    required this.buttonS,
  });

  /// Create a new instance of AiutaButtonShapes from a json map.
  factory AiutaButtonShapes.fromJson(Map<String, dynamic> json) =>
      _$AiutaButtonShapesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaButtonShapesToJson(this);
}