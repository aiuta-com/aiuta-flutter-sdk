// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_error_snackbar_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaErrorSnackbarIconsBuiltIn _$AiutaErrorSnackbarIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaErrorSnackbarIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaErrorSnackbarIconsBuiltInToJson(
        AiutaErrorSnackbarIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaErrorSnackbarIconsCustom _$AiutaErrorSnackbarIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaErrorSnackbarIconsCustom(
      error36: AiutaIcon.fromJson(json['error36'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaErrorSnackbarIconsCustomToJson(
        AiutaErrorSnackbarIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'error36': instance.error36,
    };
