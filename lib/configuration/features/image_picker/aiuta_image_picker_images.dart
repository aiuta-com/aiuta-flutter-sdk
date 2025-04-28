import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_images.g.dart';

/// Configuration for the image picker feature.
@JsonSerializable()
class AiutaImagePickerImages {
  /// List of example images.
  /// Exactly 2 images are required.
  final List<String> examples;

  /// Creates an [AiutaImagePickerImages] with the exactly 2 [examples] of
  /// images showing what photos/poses will achieve the best results for
  /// the virtual try-on.
  AiutaImagePickerImages({
    required this.examples,
  });

  // Internal json staff
  factory AiutaImagePickerImages.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerImagesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaImagePickerImagesToJson(this);
}
