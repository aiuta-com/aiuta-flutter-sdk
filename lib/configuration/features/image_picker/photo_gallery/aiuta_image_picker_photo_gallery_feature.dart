import 'package:json_annotation/json_annotation.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_strings.dart';

part 'aiuta_image_picker_photo_gallery_feature.g.dart';

/// Configuration for the photo gallery feature of the image picker.
@JsonSerializable()
class AiutaImagePickerPhotoGalleryFeature {
  /// Icons used in the photo gallery feature.
  final AiutaImagePickerPhotoGalleryIcons icons;

  /// Strings used in the photo gallery feature.
  final AiutaImagePickerPhotoGalleryStrings strings;

  /// Creates an [AiutaImagePickerPhotoGalleryFeature] with the required
  /// [icons] and [strings] configuration.
  AiutaImagePickerPhotoGalleryFeature({
    required this.icons,
    required this.strings,
  });

  // Internal json staff
  factory AiutaImagePickerPhotoGalleryFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPhotoGalleryFeatureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPhotoGalleryFeatureToJson(this);
}
