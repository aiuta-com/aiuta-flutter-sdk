// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_uploads_history_data_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerUploadsHistoryDataProviderBuiltIn
    _$AiutaImagePickerUploadsHistoryDataProviderBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerUploadsHistoryDataProviderBuiltIn()
          ..type = $enumDecode(_$AiutaDataProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerUploadsHistoryDataProviderBuiltInToJson(
        AiutaImagePickerUploadsHistoryDataProviderBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaDataProviderTypeEnumMap[instance.type]!,
    };

const _$AiutaDataProviderTypeEnumMap = {
  AiutaDataProviderType.builtIn: 'builtIn',
  AiutaDataProviderType.custom: 'custom',
};

AiutaImagePickerUploadsHistoryDataProviderCustom
    _$AiutaImagePickerUploadsHistoryDataProviderCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerUploadsHistoryDataProviderCustom(
          uploadedImages: toNull(json['uploadedImages']),
          addUploadedImages: toNull(json['addUploadedImages']),
          deleteUploadedImages: toNull(json['deleteUploadedImages']),
          selectUploadedImage: toNull(json['selectUploadedImage']),
        )..type = $enumDecode(_$AiutaDataProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerUploadsHistoryDataProviderCustomToJson(
    AiutaImagePickerUploadsHistoryDataProviderCustom instance) {
  final val = <String, dynamic>{
    'type': _$AiutaDataProviderTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uploadedImages', toNull(instance.uploadedImages));
  writeNotNull('addUploadedImages', toNull(instance.addUploadedImages));
  writeNotNull('deleteUploadedImages', toNull(instance.deleteUploadedImages));
  writeNotNull('selectUploadedImage', toNull(instance.selectUploadedImage));
  return val;
}
