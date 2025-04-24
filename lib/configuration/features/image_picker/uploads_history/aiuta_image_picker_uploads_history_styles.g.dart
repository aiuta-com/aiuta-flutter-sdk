// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_uploads_history_styles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerUploadsHistoryStyles
    _$AiutaImagePickerUploadsHistoryStylesFromJson(Map<String, dynamic> json) =>
        AiutaImagePickerUploadsHistoryStyles(
          changePhotoButtonStyle: $enumDecode(
              _$AiutaImagePickerUploadsHistoryButtonStyleEnumMap,
              json['changePhotoButtonStyle']),
        );

Map<String, dynamic> _$AiutaImagePickerUploadsHistoryStylesToJson(
        AiutaImagePickerUploadsHistoryStyles instance) =>
    <String, dynamic>{
      'changePhotoButtonStyle':
          _$AiutaImagePickerUploadsHistoryButtonStyleEnumMap[
              instance.changePhotoButtonStyle]!,
    };

const _$AiutaImagePickerUploadsHistoryButtonStyleEnumMap = {
  AiutaImagePickerUploadsHistoryButtonStyle.Primary: 'Primary',
  AiutaImagePickerUploadsHistoryButtonStyle.Blurred: 'Blurred',
};
