import 'package:json_annotation/json_annotation.dart';

part 'aiuta_share_watermark_images.g.dart';

@JsonSerializable()
class AiutaShareWatermarkImages {
  /// Logo image for the watermark.
  final String watermark;

  AiutaShareWatermarkImages({
    required this.watermark,
  });

  /// Create a new instance of AiutaShareWatermarkImages from a json map.
  factory AiutaShareWatermarkImages.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareWatermarkImagesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaShareWatermarkImagesToJson(this);
}
