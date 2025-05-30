import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_with_other_photo_icons.g.dart';

/// Icons used in the Try-On with other photo feature.
sealed class AiutaTryOnWithOtherPhotoIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnWithOtherPhotoIcons] with the specified [type].
  AiutaTryOnWithOtherPhotoIcons(this.type);

  // Internal json staff
  factory AiutaTryOnWithOtherPhotoIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnWithOtherPhotoIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnWithOtherPhotoIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on with other photo icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnWithOtherPhotoIcons`.
///
/// This class represents the default, built-in icons for the try-on with other photo feature.
@JsonSerializable()
class AiutaTryOnWithOtherPhotoIconsBuiltIn
    extends AiutaTryOnWithOtherPhotoIcons {
  /// Creates an instance of the built-in try-on with other photo icons.
  AiutaTryOnWithOtherPhotoIconsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnWithOtherPhotoIconsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnWithOtherPhotoIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnWithOtherPhotoIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnWithOtherPhotoIcons`.
///
/// This class allows for custom icons to be provided for the try-on with other photo feature.
@JsonSerializable()
class AiutaTryOnWithOtherPhotoIconsCustom
    extends AiutaTryOnWithOtherPhotoIcons {
  /// Icon for changing the photo.
  final AiutaIcon changePhoto24;

  /// Creates an [AiutaTryOnWithOtherPhotoIconsCustom] with the [changePhoto24] icon
  /// for the button over the try-on result image view to change the photo and
  /// make a new try-on.
  AiutaTryOnWithOtherPhotoIconsCustom({
    required this.changePhoto24,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnWithOtherPhotoIconsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnWithOtherPhotoIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnWithOtherPhotoIconsCustomToJson(this);
}
