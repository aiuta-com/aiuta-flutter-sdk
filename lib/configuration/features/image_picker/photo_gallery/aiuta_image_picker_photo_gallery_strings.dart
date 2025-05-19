import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_photo_gallery_strings.g.dart';

/// Strings used in the photo gallery feature of the image picker.
@JsonSerializable()
class AiutaImagePickerPhotoGalleryStrings {
  /// Text for the button to select a photo.
  final String galleryButtonSelectPhoto;

  /// Creates an [AiutaImagePickerPhotoGalleryStrings] with the required
  /// [galleryButtonSelectPhoto] title for the button in the bottom sheet to
  /// select a photo from the system's photo gallery.
  AiutaImagePickerPhotoGalleryStrings({
    required this.galleryButtonSelectPhoto,
  });

  // Internal json staff
  factory AiutaImagePickerPhotoGalleryStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPhotoGalleryStringsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPhotoGalleryStringsToJson(this);
}
