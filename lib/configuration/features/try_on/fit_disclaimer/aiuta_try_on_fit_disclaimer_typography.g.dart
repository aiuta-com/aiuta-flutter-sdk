// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_fit_disclaimer_typography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnFitDisclaimerTypographyBuiltIn
    _$AiutaTryOnFitDisclaimerTypographyBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaTryOnFitDisclaimerTypographyBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnFitDisclaimerTypographyBuiltInToJson(
        AiutaTryOnFitDisclaimerTypographyBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnFitDisclaimerTypographyCustom
    _$AiutaTryOnFitDisclaimerTypographyCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaTryOnFitDisclaimerTypographyCustom(
          disclaimer: AiutaTextStyle.fromJson(
              json['disclaimer'] as Map<String, dynamic>),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnFitDisclaimerTypographyCustomToJson(
        AiutaTryOnFitDisclaimerTypographyCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'disclaimer': instance.disclaimer,
    };
