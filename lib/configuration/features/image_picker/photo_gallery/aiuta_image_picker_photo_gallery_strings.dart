import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_photo_gallery_strings.g.dart';

@JsonSerializable()
class AiutaImagePickerPhotoGalleryStrings {
  /// Text for the button to select a photo.
  final String galleryButtonSelectPhoto;

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
