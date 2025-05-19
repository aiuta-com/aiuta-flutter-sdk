// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_feedback_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnFeedbackFeature _$AiutaTryOnFeedbackFeatureFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnFeedbackFeature(
      otherFeedback: json['otherFeedback'] == null
          ? null
          : AiutaTryOnFeedbackOtherFeature.fromJson(
              json['otherFeedback'] as Map<String, dynamic>),
      icons: AiutaTryOnFeedbackIcons.fromJson(
          json['icons'] as Map<String, dynamic>),
      strings: AiutaTryOnFeedbackStrings.fromJson(
          json['strings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaTryOnFeedbackFeatureToJson(
        AiutaTryOnFeedbackFeature instance) =>
    <String, dynamic>{
      'otherFeedback': instance.otherFeedback,
      'icons': instance.icons,
      'strings': instance.strings,
    };
