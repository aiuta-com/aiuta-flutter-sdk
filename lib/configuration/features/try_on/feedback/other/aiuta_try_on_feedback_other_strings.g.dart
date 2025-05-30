// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_feedback_other_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnFeedbackOtherStringsBuiltIn
    _$AiutaTryOnFeedbackOtherStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaTryOnFeedbackOtherStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnFeedbackOtherStringsBuiltInToJson(
        AiutaTryOnFeedbackOtherStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnFeedbackOtherStringsCustom
    _$AiutaTryOnFeedbackOtherStringsCustomFromJson(Map<String, dynamic> json) =>
        AiutaTryOnFeedbackOtherStringsCustom(
          otherFeedbackTitle: json['otherFeedbackTitle'] as String,
          otherFeedbackButtonSend: json['otherFeedbackButtonSend'] as String,
          otherFeedbackButtonCancel:
              json['otherFeedbackButtonCancel'] as String,
          otherFeedbackOptionOther: json['otherFeedbackOptionOther'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnFeedbackOtherStringsCustomToJson(
        AiutaTryOnFeedbackOtherStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'otherFeedbackTitle': instance.otherFeedbackTitle,
      'otherFeedbackButtonSend': instance.otherFeedbackButtonSend,
      'otherFeedbackButtonCancel': instance.otherFeedbackButtonCancel,
      'otherFeedbackOptionOther': instance.otherFeedbackOptionOther,
    };
