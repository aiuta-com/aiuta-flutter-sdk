import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_uploads_history_styles.g.dart';

enum AiutaImagePickerUploadsHistoryButtonStyle { Primary, Blurred }

@JsonSerializable()
class AiutaImagePickerUploadsHistoryStyles {
  /// Style for the "Change Photo" button.
  final AiutaImagePickerUploadsHistoryButtonStyle changePhotoButtonStyle;

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
