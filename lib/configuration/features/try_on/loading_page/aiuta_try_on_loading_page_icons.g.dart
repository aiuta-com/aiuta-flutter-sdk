// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_loading_page_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnLoadingPageIconsBuiltIn _$AiutaTryOnLoadingPageIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnLoadingPageIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnLoadingPageIconsBuiltInToJson(
        AiutaTryOnLoadingPageIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnLoadingPageIconsCustom _$AiutaTryOnLoadingPageIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnLoadingPageIconsCustom(
      loading14: AiutaIcon.fromJson(json['loading14'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnLoadingPageIconsCustomToJson(
        AiutaTryOnLoadingPageIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'loading14': instance.loading14,
    };
