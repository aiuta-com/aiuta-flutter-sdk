import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_uploads_history_strings.g.dart';

@JsonSerializable()
class AiutaImagePickerUploadsHistoryStrings {
  /// Text for the button to upload a new photo.
  final String uploadsHistoryButtonNewPhoto;

  /// Title for the uploads history section.
  final String uploadsHistoryTitle;

  /// Text for the button to change the photo.
  final String uploadsHistoryButtonChangePhoto;

  AiutaImagePickerUploadsHistoryStrings({
    required this.uploadsHistoryButtonNewPhoto,
    required this.uploadsHistoryTitle,
    required this.uploadsHistoryButtonChangePhoto,
  });

  /// Create a new instance of AiutaImagePickerUploadsHistoryStrings from a json map.
  factory AiutaImagePickerUploadsHistoryStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerUploadsHistoryStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerUploadsHistoryStringsToJson(this);
}
