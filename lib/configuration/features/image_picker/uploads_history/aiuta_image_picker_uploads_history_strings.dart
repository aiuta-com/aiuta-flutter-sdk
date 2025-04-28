import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_uploads_history_strings.g.dart';

/// Strings used in the uploads history feature.
@JsonSerializable()
class AiutaImagePickerUploadsHistoryStrings {
  /// Text for the button to upload a new photo.
  final String uploadsHistoryButtonNewPhoto;

  /// Title for the uploads history section.
  final String uploadsHistoryTitle;

  /// Text for the button to change the photo.
  final String uploadsHistoryButtonChangePhoto;

  /// Creates an [AiutaImagePickerUploadsHistoryStrings] with the
  /// [uploadsHistoryButtonNewPhoto], [uploadsHistoryTitle],
  /// and [uploadsHistoryButtonChangePhoto] strings.
  ///
  /// Note that if you are using the [AiutaImagePickerPredefinedModelFeature]
  /// the [uploadsHistoryButtonNewPhoto] should contain something like
  /// "Upload a photo or select a model" as the button text.
  AiutaImagePickerUploadsHistoryStrings({
    required this.uploadsHistoryButtonNewPhoto,
    required this.uploadsHistoryTitle,
    required this.uploadsHistoryButtonChangePhoto,
  });

  // Internal json staff
  factory AiutaImagePickerUploadsHistoryStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerUploadsHistoryStringsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerUploadsHistoryStringsToJson(this);
}
