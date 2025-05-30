// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_error_snackbar_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaErrorSnackbarStringsBuiltIn _$AiutaErrorSnackbarStringsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaErrorSnackbarStringsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaErrorSnackbarStringsBuiltInToJson(
        AiutaErrorSnackbarStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaErrorSnackbarStringsCustom _$AiutaErrorSnackbarStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaErrorSnackbarStringsCustom(
      defaultErrorMessage: json['defaultErrorMessage'] as String,
      tryAgainButton: json['tryAgainButton'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaErrorSnackbarStringsCustomToJson(
        AiutaErrorSnackbarStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'defaultErrorMessage': instance.defaultErrorMessage,
      'tryAgainButton': instance.tryAgainButton,
    };
