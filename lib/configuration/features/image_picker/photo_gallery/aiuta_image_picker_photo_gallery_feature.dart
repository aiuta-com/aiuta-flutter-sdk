import 'package:json_annotation/json_annotation.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_strings.dart';

part 'aiuta_image_picker_photo_gallery_feature.g.dart';

@JsonSerializable()
class AiutaImagePickerPhotoGalleryFeature {
  /// Icons used in the photo gallery feature.
  final AiutaImagePickerPhotoGalleryIcons icons;

  /// Strings used in the photo gallery feature.
  final AiutaImagePickerPhotoGalleryStrings strings;

  AiutaImagePickerPhotoGalleryFeature({
    required this.icons,
    required this.strings,
  });

  /// Create a new instance of AiutaImagePickerPhotoGalleryFeature from a json map.
  factory AiutaImagePickerPhotoGalleryFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPhotoGalleryFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPhotoGalleryFeatureToJson(this);
}
