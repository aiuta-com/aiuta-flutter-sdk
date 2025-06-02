// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_uploads_history_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerUploadsHistoryStringsBuiltIn
    _$AiutaImagePickerUploadsHistoryStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerUploadsHistoryStringsBuiltIn(
          isPredefinedModelAvailable:
              json['isPredefinedModelAvailable'] as bool,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerUploadsHistoryStringsBuiltInToJson(
        AiutaImagePickerUploadsHistoryStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'isPredefinedModelAvailable': instance.isPredefinedModelAvailable,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaImagePickerUploadsHistoryStringsCustom
    _$AiutaImagePickerUploadsHistoryStringsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerUploadsHistoryStringsCustom(
          uploadsHistoryButtonNewPhoto:
              json['uploadsHistoryButtonNewPhoto'] as String,
          uploadsHistoryTitle: json['uploadsHistoryTitle'] as String,
          uploadsHistoryButtonChangePhoto:
              json['uploadsHistoryButtonChangePhoto'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerUploadsHistoryStringsCustomToJson(
        AiutaImagePickerUploadsHistoryStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'uploadsHistoryButtonNewPhoto': instance.uploadsHistoryButtonNewPhoto,
      'uploadsHistoryTitle': instance.uploadsHistoryTitle,
      'uploadsHistoryButtonChangePhoto':
          instance.uploadsHistoryButtonChangePhoto,
    };
