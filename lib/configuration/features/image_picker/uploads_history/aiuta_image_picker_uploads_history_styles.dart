import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_uploads_history_styles.g.dart';

/// Enum representing the style of the "Change Photo" button.
enum AiutaImagePickerUploadsHistoryButtonStyle {
  /// Use primary color for the button.
  Primary,

  /// Use blurred style for the button.
  Blurred
}

/// Styles used in the uploads history feature.
@JsonSerializable()
class AiutaImagePickerUploadsHistoryStyles {
  /// Style for the "Change Photo" button.
  final AiutaImagePickerUploadsHistoryButtonStyle changePhotoButtonStyle;

  /// Creates an [AiutaImagePickerUploadsHistoryStyles] with the specified
  /// [changePhotoButtonStyle] to customize the appearance of the "Change Photo"
  /// button.
  AiutaImagePickerUploadsHistoryStyles({
    required this.changePhotoButtonStyle,
  });

  // Internal json staff
  factory AiutaImagePickerUploadsHistoryStyles.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerUploadsHistoryStylesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerUploadsHistoryStylesToJson(this);
}
