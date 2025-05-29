// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_selection_snackbar_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaSelectionSnackbarIconsBuiltIn _$AiutaSelectionSnackbarIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaSelectionSnackbarIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaSelectionSnackbarIconsBuiltInToJson(
        AiutaSelectionSnackbarIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaSelectionSnackbarIconsCustom _$AiutaSelectionSnackbarIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaSelectionSnackbarIconsCustom(
      trash24: AiutaIcon.fromJson(json['trash24'] as Map<String, dynamic>),
      check20: AiutaIcon.fromJson(json['check20'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaSelectionSnackbarIconsCustomToJson(
        AiutaSelectionSnackbarIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'trash24': instance.trash24,
      'check20': instance.check20,
    };
