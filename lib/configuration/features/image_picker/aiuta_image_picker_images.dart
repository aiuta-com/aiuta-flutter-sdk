import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_images.g.dart';

/// Configuration for the image picker feature.
sealed class AiutaImagePickerImages {
  /// The type of the images, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaImagePickerImages] with the specified [type].
  AiutaImagePickerImages(this.type);

  // Internal json staff
  factory AiutaImagePickerImages.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaImagePickerImagesBuiltIn.fromJson(json);
      case 'custom':
        return AiutaImagePickerImagesCustom.fromJson(json);
      default:
        throw Exception('Unknown image picker images type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaImagePickerImages`.
///
/// This class represents the default, built-in images for the image picker feature.
@JsonSerializable()
class AiutaImagePickerImagesBuiltIn extends AiutaImagePickerImages {
  /// Creates an instance of the built-in image picker images.
  AiutaImagePickerImagesBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaImagePickerImagesBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerImagesBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaImagePickerImagesBuiltInToJson(this);
}

/// A custom implementation of the `AiutaImagePickerImages`.
///
/// This class allows for custom images to be provided for the image picker feature.
@JsonSerializable()
class AiutaImagePickerImagesCustom extends AiutaImagePickerImages {
  /// List of example images.
  /// Exactly 2 images are required.
  final List<String> examples;

  /// Creates an [AiutaImagePickerImagesCustom] with the exactly 2 [examples] of
  /// images showing what photos/poses will achieve the best results for
  /// the virtual try-on.
  AiutaImagePickerImagesCustom({
    required this.examples,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaImagePickerImagesCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerImagesCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaImagePickerImagesCustomToJson(this);
}
