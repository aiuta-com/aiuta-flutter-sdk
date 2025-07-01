import 'package:aiuta_flutter/configuration/features/base/aiuta_component_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_uploads_history_styles.g.dart';

/// Styles used in the uploads history feature.
@JsonSerializable()
class AiutaImagePickerUploadsHistoryStyles {
  /// Style for the "Change Photo" button.
  final AiutaComponentStyle changePhotoButtonStyle;

  /// Creates an [AiutaImagePickerUploadsHistoryStyles] with the specified
  /// [changePhotoButtonStyle] to customize the appearance of the "Change Photo"
  /// button.
  AiutaImagePickerUploadsHistoryStyles({
    required this.changePhotoButtonStyle,
  });

  /// Creates a built-in uploads history styles configuration with default settings.
  factory AiutaImagePickerUploadsHistoryStyles.builtIn() {
    return AiutaImagePickerUploadsHistoryStyles(
      changePhotoButtonStyle: AiutaComponentStyle.blurred,
    );
  }

  // Internal json staff
  factory AiutaImagePickerUploadsHistoryStyles.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerUploadsHistoryStylesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerUploadsHistoryStylesToJson(this);
}
