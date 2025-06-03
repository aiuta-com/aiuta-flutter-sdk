import 'package:aiuta_flutter/configuration/features/try_on/other_photo/aiuta_try_on_with_other_photo_icons.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_with_other_photo_feature.g.dart';

/// Try-On with other photo feature to allow the user to use a different photo
/// for the try-on with the same product after seeing the result.
@JsonSerializable()
class AiutaTryOnWithOtherPhotoFeature {
  /// Icons used in the Try-On with other photo feature.
  final AiutaTryOnWithOtherPhotoIcons icons;

  /// Creates an [AiutaTryOnWithOtherPhotoFeature] with the [icons].
  AiutaTryOnWithOtherPhotoFeature({
    required this.icons,
  });

  /// Creates a built-in try-on with other photo feature configuration with default settings.
  factory AiutaTryOnWithOtherPhotoFeature.builtIn() {
    return AiutaTryOnWithOtherPhotoFeature(
      icons: AiutaTryOnWithOtherPhotoIconsBuiltIn(),
    );
  }

  // Internal json staff
  factory AiutaTryOnWithOtherPhotoFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnWithOtherPhotoFeatureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaTryOnWithOtherPhotoFeatureToJson(this);
}
