import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_images.g.dart';

@JsonSerializable()
class AiutaImagePickerImages {
  /// List of example images.
  final List<String> examples;

  AiutaImagePickerImages({
    required this.examples,
  });

  // Internal json staff
  factory AiutaImagePickerImages.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerImagesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaImagePickerImagesToJson(this);
}
