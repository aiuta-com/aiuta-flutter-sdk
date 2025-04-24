import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_photo_gallery_strings.g.dart';

@JsonSerializable()
class AiutaImagePickerPhotoGalleryStrings {
  /// Text for the button to select a photo.
  final String galleryButtonSelectPhoto;

  AiutaImagePickerPhotoGalleryStrings({
    required this.galleryButtonSelectPhoto,
  });

  /// Create a new instance of AiutaImagePickerPhotoGalleryStrings from a json map.
  factory AiutaImagePickerPhotoGalleryStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPhotoGalleryStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPhotoGalleryStringsToJson(this);
}
