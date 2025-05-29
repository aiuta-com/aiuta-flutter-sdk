// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_feedback_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnFeedbackIconsBuiltIn _$AiutaTryOnFeedbackIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnFeedbackIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnFeedbackIconsBuiltInToJson(
        AiutaTryOnFeedbackIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnFeedbackIconsCustom _$AiutaTryOnFeedbackIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnFeedbackIconsCustom(
      like36: AiutaIcon.fromJson(json['like36'] as Map<String, dynamic>),
      dislike36: AiutaIcon.fromJson(json['dislike36'] as Map<String, dynamic>),
      gratitude40:
          AiutaIcon.fromJson(json['gratitude40'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnFeedbackIconsCustomToJson(
        AiutaTryOnFeedbackIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'like36': instance.like36,
      'dislike36': instance.dislike36,
      'gratitude40': instance.gratitude40,
    };
