import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_photo_gallery_strings.g.dart';

/// Strings used in the photo gallery feature of the image picker.
sealed class AiutaImagePickerPhotoGalleryStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaImagePickerPhotoGalleryStrings] with the specified [type].
  AiutaImagePickerPhotoGalleryStrings(this.type);

  // Internal json staff
  factory AiutaImagePickerPhotoGalleryStrings.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaImagePickerPhotoGalleryStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaImagePickerPhotoGalleryStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown image picker photo gallery strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaImagePickerPhotoGalleryStrings`.
///
/// This class represents the default, built-in strings for the photo gallery
/// feature of the image picker. It does not require any custom implementation
/// and uses predefined behavior.
@JsonSerializable()
class AiutaImagePickerPhotoGalleryStringsBuiltIn
    extends AiutaImagePickerPhotoGalleryStrings {
  /// Creates an instance of the built-in image picker photo gallery strings.
  AiutaImagePickerPhotoGalleryStringsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaImagePickerPhotoGalleryStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPhotoGalleryStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPhotoGalleryStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaImagePickerPhotoGalleryStrings`.
///
/// This class allows for custom strings to be provided for the photo gallery
/// feature of the image picker, including custom button texts.
@JsonSerializable()
class AiutaImagePickerPhotoGalleryStringsCustom
    extends AiutaImagePickerPhotoGalleryStrings {
  /// Text for the button to select a photo.
  final String galleryButtonSelectPhoto;

  /// Creates an [AiutaImagePickerPhotoGalleryStringsCustom] with the required
  /// [galleryButtonSelectPhoto] title for the button in the bottom sheet to
  /// select a photo from the system's photo gallery.
  AiutaImagePickerPhotoGalleryStringsCustom({
    required this.galleryButtonSelectPhoto,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaImagePickerPhotoGalleryStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPhotoGalleryStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPhotoGalleryStringsCustomToJson(this);
}
