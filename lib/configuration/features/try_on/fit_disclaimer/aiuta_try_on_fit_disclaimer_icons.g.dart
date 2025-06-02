// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_fit_disclaimer_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnFitDisclaimerIconsCustom _$AiutaTryOnFitDisclaimerIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnFitDisclaimerIconsCustom(
      info20: AiutaIcon.fromJson(json['info20'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnFitDisclaimerIconsCustomToJson(
        AiutaTryOnFitDisclaimerIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'info20': instance.info20,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};
