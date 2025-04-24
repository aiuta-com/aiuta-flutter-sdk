import 'package:json_annotation/json_annotation.dart';

import 'aiuta_try_on_with_other_photo_icons.dart';

part 'aiuta_try_on_with_other_photo_feature.g.dart';

@JsonSerializable()
class AiutaTryOnWithOtherPhotoFeature {
  /// Icons used in the Try-On with other photo feature.
  final AiutaTryOnWithOtherPhotoIcons icons;

  AiutaTryOnWithOtherPhotoFeature({
    required this.icons,
  });

  /// Create a new instance of AiutaTryOnWithOtherPhotoFeature from a json map.
  factory AiutaTryOnWithOtherPhotoFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnWithOtherPhotoFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnWithOtherPhotoFeatureToJson(this);
}
