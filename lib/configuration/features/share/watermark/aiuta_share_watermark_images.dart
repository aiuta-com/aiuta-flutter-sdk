import 'package:json_annotation/json_annotation.dart';

part 'aiuta_share_watermark_images.g.dart';

/// This class represents the images used in the watermark for the share feature.
@JsonSerializable()
class AiutaShareWatermarkImages {
  /// Logo image to be added as a watermark to the shared images.
  final String watermark;

  /// Creates an [AiutaShareWatermarkImages] with the provided [watermark].
  AiutaShareWatermarkImages({
    required this.watermark,
  });

  // Internal json staff
  factory AiutaShareWatermarkImages.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareWatermarkImagesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaShareWatermarkImagesToJson(this);
}
