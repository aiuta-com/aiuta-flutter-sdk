import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_shapes.g.dart';

@JsonSerializable()
class AiutaImageShapes {
  /// Large image shape.
  final double imageL;

  /// Small image shape.
  final double imageS;

  AiutaImageShapes({
    required this.imageL,
    required this.imageS,
  });

  /// Create a new instance of AiutaImageShapes from a json map.
  factory AiutaImageShapes.fromJson(Map<String, dynamic> json) =>
      _$AiutaImageShapesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaImageShapesToJson(this);
}