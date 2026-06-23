// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_uploads_history_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerUploadsHistoryFeature
    _$AiutaImagePickerUploadsHistoryFeatureFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerUploadsHistoryFeature(
          strings: AiutaImagePickerUploadsHistoryStrings.fromJson(
              json['strings'] as Map<String, dynamic>),
          dataProvider: AiutaImagePickerUploadsHistoryDataProvider.fromJson(
              json['dataProvider'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AiutaImagePickerUploadsHistoryFeatureToJson(
        AiutaImagePickerUploadsHistoryFeature instance) =>
    <String, dynamic>{
      'strings': instance.strings,
      'dataProvider': instance.dataProvider,
    };
