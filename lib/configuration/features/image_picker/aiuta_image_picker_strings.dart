import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_strings.g.dart';

@JsonSerializable()
class AiutaImagePickerStrings {
  /// Title displayed when the image picker is empty.
  final String imagePickerTitleEmpty;

  /// Description displayed when the image picker is empty.
  final String imagePickerDescriptionEmpty;

  /// Text for the button to upload an image.
  final String imagePickerButtonUploadImage;

  AiutaImagePickerStrings({
    required this.imagePickerTitleEmpty,
    required this.imagePickerDescriptionEmpty,
    required this.imagePickerButtonUploadImage,
  });

  // Internal json staff
  factory AiutaImagePickerStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaImagePickerStringsToJson(this);
}
