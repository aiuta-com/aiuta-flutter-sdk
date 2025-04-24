import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_images.g.dart';

@JsonSerializable()
class AiutaImagePickerImages {
  /// List of example images.
  final List<String> examples;

  AiutaImagePickerImages({
    required this.examples,
  });

  /// Create a new instance of AiutaImagePickerImages from a json map.
  factory AiutaImagePickerImages.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerImagesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaImagePickerImagesToJson(this);
}
