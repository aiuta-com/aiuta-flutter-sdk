// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_feedback_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnFeedbackStrings _$AiutaTryOnFeedbackStringsFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnFeedbackStrings(
      feedbackOptions: (json['feedbackOptions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      feedbackTitle: json['feedbackTitle'] as String,
      feedbackButtonSkip: json['feedbackButtonSkip'] as String,
      feedbackButtonSend: json['feedbackButtonSend'] as String,
      feedbackGratitudeText: json['feedbackGratitudeText'] as String,
    );

Map<String, dynamic> _$AiutaTryOnFeedbackStringsToJson(
        AiutaTryOnFeedbackStrings instance) =>
    <String, dynamic>{
      'feedbackOptions': instance.feedbackOptions,
      'feedbackTitle': instance.feedbackTitle,
      'feedbackButtonSkip': instance.feedbackButtonSkip,
      'feedbackButtonSend': instance.feedbackButtonSend,
      'feedbackGratitudeText': instance.feedbackGratitudeText,
    };
