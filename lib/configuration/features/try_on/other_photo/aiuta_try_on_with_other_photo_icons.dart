import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_with_other_photo_icons.g.dart';

/// Icons used in the Try-On with other photo feature.
@JsonSerializable()
class AiutaTryOnWithOtherPhotoIcons {
  /// Icon for changing the photo.
  final AiutaIcon changePhoto24;

  /// Creates an [AiutaTryOnWithOtherPhotoIcons] with the [changePhoto24] icon
  /// for the button over the try-on result image view to change the photo and
  /// make a new try-on.
  AiutaTryOnWithOtherPhotoIcons({
    required this.changePhoto24,
  });

  // Internal json staff
  factory AiutaTryOnWithOtherPhotoIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnWithOtherPhotoIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnWithOtherPhotoIconsToJson(this);
}
