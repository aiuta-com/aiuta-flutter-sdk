// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_feedback_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnFeedbackStringsBuiltIn _$AiutaTryOnFeedbackStringsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnFeedbackStringsBuiltIn();

Map<String, dynamic> _$AiutaTryOnFeedbackStringsBuiltInToJson(
        AiutaTryOnFeedbackStringsBuiltIn instance) =>
    <String, dynamic>{};

AiutaTryOnFeedbackStringsCustom _$AiutaTryOnFeedbackStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnFeedbackStringsCustom(
      feedbackOptions: (json['feedbackOptions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      feedbackTitle: json['feedbackTitle'] as String,
      feedbackButtonSkip: json['feedbackButtonSkip'] as String,
      feedbackButtonSend: json['feedbackButtonSend'] as String,
      feedbackGratitudeText: json['feedbackGratitudeText'] as String,
    );

Map<String, dynamic> _$AiutaTryOnFeedbackStringsCustomToJson(
        AiutaTryOnFeedbackStringsCustom instance) =>
    <String, dynamic>{
      'feedbackOptions': instance.feedbackOptions,
      'feedbackTitle': instance.feedbackTitle,
      'feedbackButtonSkip': instance.feedbackButtonSkip,
      'feedbackButtonSend': instance.feedbackButtonSend,
      'feedbackGratitudeText': instance.feedbackGratitudeText,
    };
