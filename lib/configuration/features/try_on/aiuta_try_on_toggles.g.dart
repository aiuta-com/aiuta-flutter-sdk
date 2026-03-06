// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_toggles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnToggles _$AiutaTryOnTogglesFromJson(Map<String, dynamic> json) =>
    AiutaTryOnToggles(
      isBackgroundExecutionAllowed:
          json['isBackgroundExecutionAllowed'] as bool,
      tryGeneratePersonSegmentation:
          json['tryGeneratePersonSegmentation'] as bool? ?? true,
    );

Map<String, dynamic> _$AiutaTryOnTogglesToJson(AiutaTryOnToggles instance) =>
    <String, dynamic>{
      'isBackgroundExecutionAllowed': instance.isBackgroundExecutionAllowed,
      'tryGeneratePersonSegmentation': instance.tryGeneratePersonSegmentation,
    };
