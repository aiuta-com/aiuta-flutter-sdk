// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_loading_page_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnLoadingPageStringsBuiltIn
    _$AiutaTryOnLoadingPageStringsBuiltInFromJson(Map<String, dynamic> json) =>
        AiutaTryOnLoadingPageStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnLoadingPageStringsBuiltInToJson(
        AiutaTryOnLoadingPageStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnLoadingPageStringsCustom _$AiutaTryOnLoadingPageStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnLoadingPageStringsCustom(
      tryOnLoadingStatusUploadingImage:
          json['tryOnLoadingStatusUploadingImage'] as String,
      tryOnLoadingStatusScanningBody:
          json['tryOnLoadingStatusScanningBody'] as String,
      tryOnLoadingStatusGeneratingOutfit:
          json['tryOnLoadingStatusGeneratingOutfit'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnLoadingPageStringsCustomToJson(
        AiutaTryOnLoadingPageStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'tryOnLoadingStatusUploadingImage':
          instance.tryOnLoadingStatusUploadingImage,
      'tryOnLoadingStatusScanningBody': instance.tryOnLoadingStatusScanningBody,
      'tryOnLoadingStatusGeneratingOutfit':
          instance.tryOnLoadingStatusGeneratingOutfit,
    };
