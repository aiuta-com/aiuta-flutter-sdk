// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_uploads_history_styles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerUploadsHistoryStyles
    _$AiutaImagePickerUploadsHistoryStylesFromJson(Map<String, dynamic> json) =>
        AiutaImagePickerUploadsHistoryStyles(
          changePhotoButtonStyle: $enumDecode(
              _$AiutaComponentStyleEnumMap, json['changePhotoButtonStyle']),
        );

Map<String, dynamic> _$AiutaImagePickerUploadsHistoryStylesToJson(
        AiutaImagePickerUploadsHistoryStyles instance) =>
    <String, dynamic>{
      'changePhotoButtonStyle':
          _$AiutaComponentStyleEnumMap[instance.changePhotoButtonStyle]!,
    };

const _$AiutaComponentStyleEnumMap = {
  AiutaComponentStyle.brand: 'brand',
  AiutaComponentStyle.contrast: 'contrast',
  AiutaComponentStyle.contrastInverted: 'contrastInverted',
  AiutaComponentStyle.blurred: 'blurred',
  AiutaComponentStyle.blurredWithOutline: 'blurredWithOutline',
};
