import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_uploads_history_styles.g.dart';

/// Enum representing the style of the "Change Photo" button.
enum AiutaImagePickerUploadsHistoryButtonStyle {
  /// Button style with a primary color background
  /// and onDark color text.
  primary,

  /// Use style with a blur effect and a primary color text.
  blurred
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

  factory AiutaImagePickerUploadsHistoryStyles.builtIn() {
    return AiutaImagePickerUploadsHistoryStyles(
      changePhotoButtonStyle: AiutaImagePickerUploadsHistoryButtonStyle.blurred,
    );
  }

  // Internal json staff
  factory AiutaImagePickerUploadsHistoryStyles.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerUploadsHistoryStylesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerUploadsHistoryStylesToJson(this);
}
