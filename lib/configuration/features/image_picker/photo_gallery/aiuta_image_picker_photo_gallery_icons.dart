import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_photo_gallery_icons.g.dart';

@JsonSerializable()
class AiutaImagePickerPhotoGalleryIcons {
  /// Icon for the photo gallery.
  final AiutaIcon gallery24;

  AiutaImagePickerPhotoGalleryIcons({
    required this.gallery24,
  });

  // Internal json staff
  factory AiutaImagePickerPhotoGalleryIcons.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPhotoGalleryIconsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPhotoGalleryIconsToJson(this);
}
