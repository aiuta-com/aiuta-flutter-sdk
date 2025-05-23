import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_shapes.g.dart';

/// The shape configurations for image views in the Aiuta UI.
@JsonSerializable()
class AiutaImageShapes {
  /// Large image shape.
  final double imageL;

  /// Small image shape.
  final double imageS;

  /// Creates an [AiutaImageShapes] with the specified [imageL]
  /// and [imageS] corner radius for the shapes.
  AiutaImageShapes({
    required this.imageL,
    required this.imageS,
  });

  // Internal json staff
  factory AiutaImageShapes.fromJson(Map<String, dynamic> json) =>
      _$AiutaImageShapesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaImageShapesToJson(this);
}
