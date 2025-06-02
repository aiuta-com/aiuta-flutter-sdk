import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_photo_gallery_icons.g.dart';

/// Icons used in the photo gallery feature of the image picker.
sealed class AiutaImagePickerPhotoGalleryIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaImagePickerPhotoGalleryIcons] with the specified [type].
  AiutaImagePickerPhotoGalleryIcons(this.type);

  // Internal json staff
  factory AiutaImagePickerPhotoGalleryIcons.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaImagePickerPhotoGalleryIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaImagePickerPhotoGalleryIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown image picker photo gallery icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaImagePickerPhotoGalleryIcons`.
///
/// This class represents the default, built-in icons for the photo gallery feature.
@JsonSerializable()
class AiutaImagePickerPhotoGalleryIconsBuiltIn
    extends AiutaImagePickerPhotoGalleryIcons {
  /// Creates an instance of the built-in image picker photo gallery icons.
  AiutaImagePickerPhotoGalleryIconsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaImagePickerPhotoGalleryIconsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPhotoGalleryIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPhotoGalleryIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaImagePickerPhotoGalleryIcons`.
///
/// This class allows for custom icons to be provided for the photo gallery feature.
@JsonSerializable()
class AiutaImagePickerPhotoGalleryIconsCustom
    extends AiutaImagePickerPhotoGalleryIcons {
  /// Icon for the photo gallery.
  final AiutaIcon gallery24;

  /// Creates an [AiutaImagePickerPhotoGalleryIconsCustom] with the [gallery24]
  /// icon fore the bottom sheet icon button to select the photo from the
  /// system photo gallery.
  AiutaImagePickerPhotoGalleryIconsCustom({
    required this.gallery24,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaImagePickerPhotoGalleryIconsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPhotoGalleryIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPhotoGalleryIconsCustomToJson(this);
}
