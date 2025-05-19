import 'package:aiuta_flutter/configuration/features/share/watermark/aiuta_share_watermark_images.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_share_watermark_feature.g.dart';

/// This optional feature adds a watermark to the shared images.
@JsonSerializable()
class AiutaShareWatermarkFeature {
  /// Images used in the watermark feature.
  final AiutaShareWatermarkImages images;

  /// Creates an [AiutaShareWatermarkFeature] with the provided [images].
  AiutaShareWatermarkFeature({
    required this.images,
  });

  // Internal json staff
  factory AiutaShareWatermarkFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareWatermarkFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaShareWatermarkFeatureToJson(this);
}
