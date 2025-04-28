import 'package:aiuta_flutter/configuration/features/try_on/other_photo/aiuta_try_on_with_other_photo_icons.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_with_other_photo_feature.g.dart';

@JsonSerializable()
class AiutaTryOnWithOtherPhotoFeature {
  /// Icons used in the Try-On with other photo feature.
  final AiutaTryOnWithOtherPhotoIcons icons;

  AiutaTryOnWithOtherPhotoFeature({
    required this.icons,
  });

  // Internal json staff
  factory AiutaTryOnWithOtherPhotoFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnWithOtherPhotoFeatureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaTryOnWithOtherPhotoFeatureToJson(this);
}
