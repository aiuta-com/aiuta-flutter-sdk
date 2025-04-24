import 'package:json_annotation/json_annotation.dart';

import 'aiuta_share_watermark_images.dart';

part 'aiuta_share_watermark_feature.g.dart';

@JsonSerializable()
class AiutaShareWatermarkFeature {
  /// Images used in the watermark feature.
  final AiutaShareWatermarkImages images;

  AiutaShareWatermarkFeature({
    required this.images,
  });

  /// Create a new instance of AiutaShareWatermarkFeature from a json map.
  factory AiutaShareWatermarkFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareWatermarkFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaShareWatermarkFeatureToJson(this);
}
