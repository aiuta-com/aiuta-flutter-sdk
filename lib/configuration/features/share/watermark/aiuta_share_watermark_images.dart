import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_share_watermark_images.g.dart';

/// This class represents the images used in the watermark for the share feature.
sealed class AiutaShareWatermarkImages {
  /// The type of the images, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaShareWatermarkImages] with the specified [type].
  AiutaShareWatermarkImages(this.type);

  // Internal json staff
  factory AiutaShareWatermarkImages.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaShareWatermarkImagesBuiltIn.fromJson(json);
      case 'custom':
        return AiutaShareWatermarkImagesCustom.fromJson(json);
      default:
        throw Exception('Unknown share watermark images type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaShareWatermarkImages`.
///
/// This class represents the default, built-in images for the share watermark feature.
@JsonSerializable()
class AiutaShareWatermarkImagesBuiltIn extends AiutaShareWatermarkImages {
  /// Creates an instance of the built-in share watermark images.
  AiutaShareWatermarkImagesBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaShareWatermarkImagesBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaShareWatermarkImagesBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaShareWatermarkImagesBuiltInToJson(this);
}

/// A custom implementation of the `AiutaShareWatermarkImages`.
///
/// This class allows for custom images to be provided for the share watermark feature.
@JsonSerializable()
class AiutaShareWatermarkImagesCustom extends AiutaShareWatermarkImages {
  /// Logo image to be added as a watermark to the shared images.
  final String watermark;

  /// Creates an [AiutaShareWatermarkImagesCustom] with the provided [watermark].
  AiutaShareWatermarkImagesCustom({
    required this.watermark,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaShareWatermarkImagesCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareWatermarkImagesCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaShareWatermarkImagesCustomToJson(this);
}
