import 'package:json_annotation/json_annotation.dart';
import 'package:aiuta_flutter/configuration/ui/theme/icons/aiuta_icon.dart';

part 'aiuta_image_picker_photo_gallery_icons.g.dart';

@JsonSerializable()
class AiutaImagePickerPhotoGalleryIcons {
  /// Icon for the photo gallery.
  final AiutaIcon gallery24;

  AiutaImagePickerPhotoGalleryIcons({
    required this.gallery24,
  });

  /// Create a new instance of AiutaImagePickerPhotoGalleryIcons from a json map.
  factory AiutaImagePickerPhotoGalleryIcons.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPhotoGalleryIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPhotoGalleryIconsToJson(this);
}
