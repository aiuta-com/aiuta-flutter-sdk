// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_fit_disclaimer_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnFitDisclaimerStringsBuiltIn
    _$AiutaTryOnFitDisclaimerStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaTryOnFitDisclaimerStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnFitDisclaimerStringsBuiltInToJson(
        AiutaTryOnFitDisclaimerStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnFitDisclaimerStringsCustom
    _$AiutaTryOnFitDisclaimerStringsCustomFromJson(Map<String, dynamic> json) =>
        AiutaTryOnFitDisclaimerStringsCustom(
          fitDisclaimerTitle: json['fitDisclaimerTitle'] as String,
          fitDisclaimerDescription: json['fitDisclaimerDescription'] as String,
          fitDisclaimerButtonClose: json['fitDisclaimerButtonClose'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnFitDisclaimerStringsCustomToJson(
        AiutaTryOnFitDisclaimerStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'fitDisclaimerTitle': instance.fitDisclaimerTitle,
      'fitDisclaimerDescription': instance.fitDisclaimerDescription,
      'fitDisclaimerButtonClose': instance.fitDisclaimerButtonClose,
    };
