import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_feature.dart';
import 'package:json_annotation/json_annotation.dart';

import 'aiuta_image_picker_images.dart';
import 'aiuta_image_picker_strings.dart';

part 'aiuta_image_picker_feature.g.dart';

@JsonSerializable()
class AiutaImagePickerFeature {
  /// Camera feature configuration (nullable).
  final AiutaImagePickerCameraFeature? camera;

  /// Photo gallery feature configuration.
  final AiutaImagePickerPhotoGalleryFeature photoGallery;

  /// Predefined models feature configuration (nullable).
  final AiutaImagePickerPredefinedModelFeature? predefinedModels;

  /// Uploads history feature configuration (nullable).
  final AiutaImagePickerUploadsHistoryFeature? uploadsHistory;

  /// Images used in the image picker feature.
  final AiutaImagePickerImages images;

  /// Strings used in the image picker feature.
  final AiutaImagePickerStrings strings;

  AiutaImagePickerFeature({
    this.camera,
    required this.photoGallery,
    this.predefinedModels,
    this.uploadsHistory,
    required this.images,
    required this.strings,
  });

  /// Create a new instance of AiutaImagePickerFeature from a json map.
  factory AiutaImagePickerFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaImagePickerFeatureToJson(this);
}

