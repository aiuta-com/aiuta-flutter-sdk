// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_generations_history_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnGenerationsHistoryFeature
    _$AiutaTryOnGenerationsHistoryFeatureFromJson(Map<String, dynamic> json) =>
        AiutaTryOnGenerationsHistoryFeature(
          icons: AiutaTryOnGenerationsHistoryIcons.fromJson(
              json['icons'] as Map<String, dynamic>),
          strings: AiutaTryOnGenerationsHistoryStrings.fromJson(
              json['strings'] as Map<String, dynamic>),
          dataProvider: AiutaTryOnGenerationsHistoryDataProvider.fromJson(
              json['dataProvider'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AiutaTryOnGenerationsHistoryFeatureToJson(
        AiutaTryOnGenerationsHistoryFeature instance) =>
    <String, dynamic>{
      'icons': instance.icons,
      'strings': instance.strings,
      'dataProvider': instance.dataProvider,
    };
