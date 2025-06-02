import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_images.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_strings.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_feature.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_feature.g.dart';

/// Configuration for the image picker feature (currently main screen).
/// This feature allows users to select images from the camera, photo gallery,
/// predefined models, and view their upload history.
@JsonSerializable()
class AiutaImagePickerFeature {
  /// Camera feature configuration (optional).
  final AiutaImagePickerCameraFeature? camera;

  /// Photo gallery feature configuration.
  final AiutaImagePickerPhotoGalleryFeature photoGallery;

  /// Predefined models feature configuration (optional).
  final AiutaImagePickerPredefinedModelFeature? predefinedModels;

  /// Uploads history feature configuration (optional).
  final AiutaImagePickerUploadsHistoryFeature? uploadsHistory;

  /// Images used in the image picker feature.
  final AiutaImagePickerImages images;

  /// Strings used in the image picker feature.
  final AiutaImagePickerStrings strings;

  /// Creates an [AiutaImagePickerFeature] with the optional [camera] to allow
  /// users to take new pictures, a required [photoGallery] to select images
  /// from the device's gallery, an optional [predefinedModels] to select
  /// predefined models, an optional [uploadsHistory] to select one of the
  /// previously used images, and required [images] and [strings]
  /// configuration.
  AiutaImagePickerFeature({
    this.camera,
    required this.photoGallery,
    this.predefinedModels,
    this.uploadsHistory,
    required this.images,
    required this.strings,
  });

  factory AiutaImagePickerFeature.builtIn() {
    return AiutaImagePickerFeature(
      camera: AiutaImagePickerCameraFeature.builtIn(),
      photoGallery: AiutaImagePickerPhotoGalleryFeature.builtIn(),
      predefinedModels: AiutaImagePickerPredefinedModelFeature.builtIn(),
      uploadsHistory: AiutaImagePickerUploadsHistoryFeature.builtIn(
        isPredefinedModelAvailable: true,
      ),
      images: AiutaImagePickerImagesBuiltIn(),
      strings: AiutaImagePickerStringsBuiltIn(),
    );
  }

  // Internal json staff
  factory AiutaImagePickerFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaImagePickerFeatureToJson(this);
}
